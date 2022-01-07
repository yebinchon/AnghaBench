
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_rpm {int ack_status; int ack; int dev; TYPE_1__* data; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ack_sel_size; scalar_t__ ack_ctx_off; scalar_t__ ack_sel_off; } ;


 int IRQ_HANDLED ;
 int RPM_CTRL_REG (struct qcom_rpm*,scalar_t__) ;
 int RPM_NOTIFICATION ;
 int complete (int *) ;
 int dev_warn (int ,char*) ;
 int readl_relaxed (int ) ;
 int writel (int ,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static irqreturn_t qcom_rpm_ack_interrupt(int irq, void *dev)
{
 struct qcom_rpm *rpm = dev;
 u32 ack;
 int i;

 ack = readl_relaxed(RPM_CTRL_REG(rpm, rpm->data->ack_ctx_off));
 for (i = 0; i < rpm->data->ack_sel_size; i++)
  writel_relaxed(0,
   RPM_CTRL_REG(rpm, rpm->data->ack_sel_off + i));
 writel(0, RPM_CTRL_REG(rpm, rpm->data->ack_ctx_off));

 if (ack & RPM_NOTIFICATION) {
  dev_warn(rpm->dev, "ignoring notification!\n");
 } else {
  rpm->ack_status = ack;
  complete(&rpm->ack);
 }

 return IRQ_HANDLED;
}
