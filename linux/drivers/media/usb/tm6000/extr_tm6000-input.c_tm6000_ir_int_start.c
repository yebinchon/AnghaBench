
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {struct tm6000_IR* ir; } ;
struct tm6000_IR {int rc; } ;


 int __tm6000_ir_int_start (int ) ;

int tm6000_ir_int_start(struct tm6000_core *dev)
{
 struct tm6000_IR *ir = dev->ir;

 if (!ir)
  return 0;

 return __tm6000_ir_int_start(ir->rc);
}
