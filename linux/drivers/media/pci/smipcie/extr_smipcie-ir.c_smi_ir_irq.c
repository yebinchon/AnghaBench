
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_rc {int dummy; } ;


 int IR_X_INT ;
 int smi_ir_clearInterrupt (struct smi_rc*) ;
 int smi_ir_decode (struct smi_rc*) ;
 int smi_ir_disableInterrupt (struct smi_rc*) ;
 int smi_ir_enableInterrupt (struct smi_rc*) ;

int smi_ir_irq(struct smi_rc *ir, u32 int_status)
{
 int handled = 0;

 if (int_status & IR_X_INT) {
  smi_ir_disableInterrupt(ir);
  smi_ir_clearInterrupt(ir);
  smi_ir_decode(ir);
  smi_ir_enableInterrupt(ir);
  handled = 1;
 }
 return handled;
}
