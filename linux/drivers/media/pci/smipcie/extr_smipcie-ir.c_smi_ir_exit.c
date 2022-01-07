
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_rc {struct rc_dev* rc_dev; } ;
struct smi_dev {struct smi_rc ir; } ;
struct rc_dev {int dummy; } ;


 int rc_unregister_device (struct rc_dev*) ;
 int smi_ir_stop (struct smi_rc*) ;

void smi_ir_exit(struct smi_dev *dev)
{
 struct smi_rc *ir = &dev->ir;
 struct rc_dev *rc_dev = ir->rc_dev;

 smi_ir_stop(ir);
 rc_unregister_device(rc_dev);
 ir->rc_dev = ((void*)0);
}
