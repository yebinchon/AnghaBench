
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rc_dev {TYPE_1__* raw; int minor; } ;
struct TYPE_2__ {int list; struct task_struct* thread; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int ir_raw_client_list ;
 int ir_raw_event_thread ;
 int ir_raw_handler_lock ;
 struct task_struct* kthread_run (int ,TYPE_1__*,char*,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ir_raw_event_register(struct rc_dev *dev)
{
 struct task_struct *thread;

 thread = kthread_run(ir_raw_event_thread, dev->raw, "rc%u", dev->minor);
 if (IS_ERR(thread))
  return PTR_ERR(thread);

 dev->raw->thread = thread;

 mutex_lock(&ir_raw_handler_lock);
 list_add_tail(&dev->raw->list, &ir_raw_client_list);
 mutex_unlock(&ir_raw_handler_lock);

 return 0;
}
