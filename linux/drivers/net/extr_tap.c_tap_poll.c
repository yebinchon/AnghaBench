
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wait; } ;
struct TYPE_3__ {int flags; TYPE_2__ wq; } ;
struct tap_queue {int sk; TYPE_1__ sock; int ring; } ;
struct file {struct tap_queue* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int poll_wait (struct file*,int *,int *) ;
 int ptr_ring_empty (int *) ;
 scalar_t__ sock_writeable (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static __poll_t tap_poll(struct file *file, poll_table *wait)
{
 struct tap_queue *q = file->private_data;
 __poll_t mask = EPOLLERR;

 if (!q)
  goto out;

 mask = 0;
 poll_wait(file, &q->sock.wq.wait, wait);

 if (!ptr_ring_empty(&q->ring))
  mask |= EPOLLIN | EPOLLRDNORM;

 if (sock_writeable(&q->sk) ||
     (!test_and_set_bit(SOCKWQ_ASYNC_NOSPACE, &q->sock.flags) &&
      sock_writeable(&q->sk)))
  mask |= EPOLLOUT | EPOLLWRNORM;

out:
 return mask;
}
