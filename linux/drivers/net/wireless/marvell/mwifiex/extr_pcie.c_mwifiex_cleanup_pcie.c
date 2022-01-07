
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int pci_mmap1; int pci_mmap; int work; TYPE_1__ pcie; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_pcie_card_reg {int drv_rdy; int fw_status; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ERROR ;
 scalar_t__ FIRMWARE_READY_PCIE ;
 int INFO ;
 int cancel_work_sync (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_pcie_free_buffers (struct mwifiex_adapter*) ;
 int mwifiex_read_reg (struct mwifiex_adapter*,int ,scalar_t__*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int) ;

__attribute__((used)) static void mwifiex_cleanup_pcie(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 struct pci_dev *pdev = card->dev;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 int ret;
 u32 fw_status;

 cancel_work_sync(&card->work);

 ret = mwifiex_read_reg(adapter, reg->fw_status, &fw_status);
 if (fw_status == FIRMWARE_READY_PCIE) {
  mwifiex_dbg(adapter, INFO,
       "Clearing driver ready signature\n");
  if (mwifiex_write_reg(adapter, reg->drv_rdy, 0x00000000))
   mwifiex_dbg(adapter, ERROR,
        "Failed to write driver not-ready signature\n");
 }

 pci_disable_device(pdev);

 pci_iounmap(pdev, card->pci_mmap);
 pci_iounmap(pdev, card->pci_mmap1);
 pci_release_region(pdev, 2);
 pci_release_region(pdev, 0);

 mwifiex_pcie_free_buffers(adapter);
}
