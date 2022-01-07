
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_pciedev_info {int in_irq; scalar_t__ state; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BRCMFMAC_PCIE_STATE_UP ;
 int BRCMF_PCIE_MB_INT_D2H_DB ;
 int BRCMF_PCIE_MB_INT_FN0_0 ;
 int BRCMF_PCIE_MB_INT_FN0_1 ;
 int BRCMF_PCIE_PCIE2REG_MAILBOXINT ;
 int IRQ_HANDLED ;
 int PCIE ;
 int brcmf_dbg (int ,char*,int) ;
 int brcmf_pcie_bus_console_read (struct brcmf_pciedev_info*,int) ;
 int brcmf_pcie_handle_mb_data (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_intr_enable (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;
 int brcmf_proto_msgbuf_rx_trigger (int *) ;

__attribute__((used)) static irqreturn_t brcmf_pcie_isr_thread(int irq, void *arg)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)arg;
 u32 status;

 devinfo->in_irq = 1;
 status = brcmf_pcie_read_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
 brcmf_dbg(PCIE, "Enter %x\n", status);
 if (status) {
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT,
           status);
  if (status & (BRCMF_PCIE_MB_INT_FN0_0 |
         BRCMF_PCIE_MB_INT_FN0_1))
   brcmf_pcie_handle_mb_data(devinfo);
  if (status & BRCMF_PCIE_MB_INT_D2H_DB) {
   if (devinfo->state == BRCMFMAC_PCIE_STATE_UP)
    brcmf_proto_msgbuf_rx_trigger(
       &devinfo->pdev->dev);
  }
 }
 brcmf_pcie_bus_console_read(devinfo, 0);
 if (devinfo->state == BRCMFMAC_PCIE_STATE_UP)
  brcmf_pcie_intr_enable(devinfo);
 devinfo->in_irq = 0;
 return IRQ_HANDLED;
}
