
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {struct cx88_IR* ir; } ;
struct cx88_IR {int dev; } ;


 int cx88_ir_stop (struct cx88_core*) ;
 int kfree (struct cx88_IR*) ;
 int rc_unregister_device (int ) ;

int cx88_ir_fini(struct cx88_core *core)
{
 struct cx88_IR *ir = core->ir;


 if (!ir)
  return 0;

 cx88_ir_stop(core);
 rc_unregister_device(ir->dev);
 kfree(ir);


 core->ir = ((void*)0);
 return 0;
}
