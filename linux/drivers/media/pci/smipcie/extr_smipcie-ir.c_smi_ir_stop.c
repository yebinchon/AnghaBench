
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_rc {struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;


 int IR_Init_Reg ;
 int rbIRen ;
 int smi_clear (int ,int ) ;
 int smi_ir_disableInterrupt (struct smi_rc*) ;

__attribute__((used)) static void smi_ir_stop(struct smi_rc *ir)
{
 struct smi_dev *dev = ir->dev;

 smi_ir_disableInterrupt(ir);
 smi_clear(IR_Init_Reg, rbIRen);
}
