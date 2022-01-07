
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int EPOLLOUT ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int * sk_sleep (struct sock*) ;
 int sock_writeable (struct sock*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible_poll (int *,int) ;

__attribute__((used)) static void tap_sock_write_space(struct sock *sk)
{
 wait_queue_head_t *wqueue;

 if (!sock_writeable(sk) ||
     !test_and_clear_bit(SOCKWQ_ASYNC_NOSPACE, &sk->sk_socket->flags))
  return;

 wqueue = sk_sleep(sk);
 if (wqueue && waitqueue_active(wqueue))
  wake_up_interruptible_poll(wqueue, EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND);
}
