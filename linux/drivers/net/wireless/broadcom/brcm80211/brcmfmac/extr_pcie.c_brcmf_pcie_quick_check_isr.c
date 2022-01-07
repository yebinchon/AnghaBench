
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {int dummy; } ;
typedef int irqreturn_t ;


 int BRCMF_PCIE_PCIE2REG_MAILBOXINT ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCIE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_pcie_intr_disable (struct brcmf_pciedev_info*) ;
 scalar_t__ brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;

__attribute__((used)) static irqreturn_t brcmf_pcie_quick_check_isr(int irq, void *arg)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)arg;

 if (brcmf_pcie_read_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT)) {
  brcmf_pcie_intr_disable(devinfo);
  brcmf_dbg(PCIE, "Enter\n");
  return IRQ_WAKE_THREAD;
 }
 return IRQ_NONE;
}
