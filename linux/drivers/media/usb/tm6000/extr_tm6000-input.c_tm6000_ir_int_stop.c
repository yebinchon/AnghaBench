
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {struct tm6000_IR* ir; } ;
struct tm6000_IR {int rc; } ;


 int __tm6000_ir_int_stop (int ) ;

void tm6000_ir_int_stop(struct tm6000_core *dev)
{
 struct tm6000_IR *ir = dev->ir;

 if (!ir || !ir->rc)
  return;

 __tm6000_ir_int_stop(ir->rc);
}
