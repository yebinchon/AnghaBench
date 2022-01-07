
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_hfi_device {int irq_status; } ;
struct venus_core {int dummy; } ;
typedef int irqreturn_t ;


 int CPU_CS_A2HSOFTINTCLR ;
 int CPU_CS_SCIACMDARG0_INIT_IDLE_MSG_MASK ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int WRAPPER_INTR_CLEAR ;
 int WRAPPER_INTR_STATUS ;
 int WRAPPER_INTR_STATUS_A2HWD_MASK ;
 int WRAPPER_INTR_STATUS_A2H_MASK ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_readl (struct venus_hfi_device*,int ) ;
 int venus_writel (struct venus_hfi_device*,int ,int) ;

__attribute__((used)) static irqreturn_t venus_isr(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 u32 status;

 if (!hdev)
  return IRQ_NONE;

 status = venus_readl(hdev, WRAPPER_INTR_STATUS);

 if (status & WRAPPER_INTR_STATUS_A2H_MASK ||
     status & WRAPPER_INTR_STATUS_A2HWD_MASK ||
     status & CPU_CS_SCIACMDARG0_INIT_IDLE_MSG_MASK)
  hdev->irq_status = status;

 venus_writel(hdev, CPU_CS_A2HSOFTINTCLR, 1);
 venus_writel(hdev, WRAPPER_INTR_CLEAR, status);

 return IRQ_WAKE_THREAD;
}
