
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_rc {struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;


 int IR_Idle_Cnt_Low ;
 int IR_Init_Reg ;
 int SMI_SAMPLE_IDLEMIN ;
 int SMI_SAMPLE_PERIOD ;
 int msleep (int) ;
 int rbIRen ;
 int rbIRhighidle ;
 int smi_ir_enableInterrupt (struct smi_rc*) ;
 int smi_set (int ,int) ;
 int smi_write (int ,int) ;

void smi_ir_start(struct smi_rc *ir)
{
 struct smi_dev *dev = ir->dev;

 smi_write(IR_Idle_Cnt_Low,
    (((SMI_SAMPLE_PERIOD - 1) & 0xFFFF) << 16) |
    (SMI_SAMPLE_IDLEMIN & 0xFFFF));
 msleep(20);
 smi_set(IR_Init_Reg, rbIRen | rbIRhighidle);

 smi_ir_enableInterrupt(ir);
}
