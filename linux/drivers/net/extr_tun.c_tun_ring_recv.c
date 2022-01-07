
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wait; } ;
struct TYPE_6__ {TYPE_2__ wq; TYPE_1__* sk; } ;
struct tun_file {TYPE_3__ socket; int tx_ring; } ;
struct TYPE_4__ {int sk_shutdown; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EFAULT ;
 int ERESTARTSYS ;
 int RCV_SHUTDOWN ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 void* ptr_ring_consume (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static void *tun_ring_recv(struct tun_file *tfile, int noblock, int *err)
{
 DECLARE_WAITQUEUE(wait, current);
 void *ptr = ((void*)0);
 int error = 0;

 ptr = ptr_ring_consume(&tfile->tx_ring);
 if (ptr)
  goto out;
 if (noblock) {
  error = -EAGAIN;
  goto out;
 }

 add_wait_queue(&tfile->socket.wq.wait, &wait);

 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);
  ptr = ptr_ring_consume(&tfile->tx_ring);
  if (ptr)
   break;
  if (signal_pending(current)) {
   error = -ERESTARTSYS;
   break;
  }
  if (tfile->socket.sk->sk_shutdown & RCV_SHUTDOWN) {
   error = -EFAULT;
   break;
  }

  schedule();
 }

 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&tfile->socket.wq.wait, &wait);

out:
 *err = error;
 return ptr;
}
