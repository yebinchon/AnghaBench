
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int ring_thread_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 long ERESTARTSYS ;
 int HZ ;
 int add_wait_queue (int *,int *) ;
 int current ;
 scalar_t__ kthread_should_stop () ;
 int remove_wait_queue (int *,int *) ;
 long schedule_timeout_interruptible (int ) ;
 int set_freezable () ;
 int solo_handle_ring (struct solo_dev*) ;
 int try_to_freeze () ;
 int wait ;

__attribute__((used)) static int solo_ring_thread(void *data)
{
 struct solo_dev *solo_dev = data;
 DECLARE_WAITQUEUE(wait, current);

 set_freezable();
 add_wait_queue(&solo_dev->ring_thread_wait, &wait);

 for (;;) {
  long timeout = schedule_timeout_interruptible(HZ);

  if (timeout == -ERESTARTSYS || kthread_should_stop())
   break;
  solo_handle_ring(solo_dev);
  try_to_freeze();
 }

 remove_wait_queue(&solo_dev->ring_thread_wait, &wait);

 return 0;
}
