
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int io_thread_lock; int req; int host; } ;


 int EAGAIN ;
 int ENXIO ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int dbg (char*,int) ;
 int dbg_verbose (char*) ;
 scalar_t__ kthread_should_stop () ;
 int memstick_next_req (int ,int *) ;
 int r592_execute_tpc (struct r592_device*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int r592_process_thread(void *data)
{
 int error;
 struct r592_device *dev = (struct r592_device *)data;
 unsigned long flags;

 while (!kthread_should_stop()) {
  spin_lock_irqsave(&dev->io_thread_lock, flags);
  set_current_state(TASK_INTERRUPTIBLE);
  error = memstick_next_req(dev->host, &dev->req);
  spin_unlock_irqrestore(&dev->io_thread_lock, flags);

  if (error) {
   if (error == -ENXIO || error == -EAGAIN) {
    dbg_verbose("IO: done IO, sleeping");
   } else {
    dbg("IO: unknown error from "
     "memstick_next_req %d", error);
   }

   if (kthread_should_stop())
    set_current_state(TASK_RUNNING);

   schedule();
  } else {
   set_current_state(TASK_RUNNING);
   r592_execute_tpc(dev);
  }
 }
 return 0;
}
