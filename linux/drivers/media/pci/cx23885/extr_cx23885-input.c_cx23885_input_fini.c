
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx23885_dev {TYPE_1__* kernel_ir; } ;
struct TYPE_2__ {struct TYPE_2__* name; struct TYPE_2__* phys; int rc; } ;


 int cx23885_input_ir_stop (struct cx23885_dev*) ;
 int kfree (TYPE_1__*) ;
 int rc_unregister_device (int ) ;

void cx23885_input_fini(struct cx23885_dev *dev)
{

 cx23885_input_ir_stop(dev);

 if (dev->kernel_ir == ((void*)0))
  return;
 rc_unregister_device(dev->kernel_ir->rc);
 kfree(dev->kernel_ir->phys);
 kfree(dev->kernel_ir->name);
 kfree(dev->kernel_ir);
 dev->kernel_ir = ((void*)0);
}
