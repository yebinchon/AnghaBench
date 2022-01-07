
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {struct pci_dev* dev; TYPE_1__ pcie; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_pcie_card_reg {int drv_rdy; } ;
struct mwifiex_adapter {scalar_t__ seq_num; struct pcie_service_card* card; } ;


 int ERROR ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_pcie_free_buffers (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;
 int pci_clear_master (struct pci_dev*) ;

__attribute__((used)) static void mwifiex_pcie_down_dev(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 struct pci_dev *pdev = card->dev;

 if (mwifiex_write_reg(adapter, reg->drv_rdy, 0x00000000))
  mwifiex_dbg(adapter, ERROR, "Failed to write driver not-ready signature\n");

 pci_clear_master(pdev);

 adapter->seq_num = 0;

 mwifiex_pcie_free_buffers(adapter);
}
