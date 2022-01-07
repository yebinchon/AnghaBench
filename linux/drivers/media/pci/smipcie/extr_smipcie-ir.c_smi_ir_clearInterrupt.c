
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_rc {struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;


 int IR_X_INT ;
 int MSI_INT_STATUS_CLR ;
 int smi_write (int ,int ) ;

__attribute__((used)) static void smi_ir_clearInterrupt(struct smi_rc *ir)
{
 struct smi_dev *dev = ir->dev;

 smi_write(MSI_INT_STATUS_CLR, IR_X_INT);
}
