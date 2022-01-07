
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_rpm {int dev; int ipc_bit; int ipc_offset; int ipc_regmap; } ;
typedef int irqreturn_t ;


 int BIT (int ) ;
 int IRQ_HANDLED ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t qcom_rpm_err_interrupt(int irq, void *dev)
{
 struct qcom_rpm *rpm = dev;

 regmap_write(rpm->ipc_regmap, rpm->ipc_offset, BIT(rpm->ipc_bit));
 dev_err(rpm->dev, "RPM triggered fatal error\n");

 return IRQ_HANDLED;
}
