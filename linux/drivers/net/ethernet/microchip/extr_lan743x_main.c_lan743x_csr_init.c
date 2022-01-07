
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lan743x_csr {int id_rev; int flags; void* fpga_rev; int csr_address; } ;
struct lan743x_adapter {int netdev; TYPE_1__* pdev; struct lan743x_csr csr; } ;
typedef int resource_size_t ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int FPGA_REV ;
 int FPGA_REV_GET_MAJOR_ (void*) ;
 int FPGA_REV_GET_MINOR_ (void*) ;
 int ID_REV ;


 int ID_REV_CHIP_REV_MASK_ ;
 int ID_REV_IS_VALID_CHIP_ID_ (int) ;
 int LAN743X_CSR_FLAG_IS_A0 ;
 int LAN743X_CSR_FLAG_IS_B0 ;
 int LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR ;
 int devm_ioremap (int *,int ,int ) ;
 int lan743x_csr_light_reset (struct lan743x_adapter*) ;
 void* lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int netif_info (struct lan743x_adapter*,int ,int ,char*,int,int ,int ) ;
 int pci_resource_len (TYPE_1__*,int ) ;
 int pci_resource_start (TYPE_1__*,int ) ;
 int probe ;

__attribute__((used)) static int lan743x_csr_init(struct lan743x_adapter *adapter)
{
 struct lan743x_csr *csr = &adapter->csr;
 resource_size_t bar_start, bar_length;
 int result;

 bar_start = pci_resource_start(adapter->pdev, 0);
 bar_length = pci_resource_len(adapter->pdev, 0);
 csr->csr_address = devm_ioremap(&adapter->pdev->dev,
     bar_start, bar_length);
 if (!csr->csr_address) {
  result = -ENOMEM;
  goto clean_up;
 }

 csr->id_rev = lan743x_csr_read(adapter, ID_REV);
 csr->fpga_rev = lan743x_csr_read(adapter, FPGA_REV);
 netif_info(adapter, probe, adapter->netdev,
     "ID_REV = 0x%08X, FPGA_REV = %d.%d\n",
     csr->id_rev, FPGA_REV_GET_MAJOR_(csr->fpga_rev),
     FPGA_REV_GET_MINOR_(csr->fpga_rev));
 if (!ID_REV_IS_VALID_CHIP_ID_(csr->id_rev)) {
  result = -ENODEV;
  goto clean_up;
 }

 csr->flags = LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR;
 switch (csr->id_rev & ID_REV_CHIP_REV_MASK_) {
 case 129:
  csr->flags |= LAN743X_CSR_FLAG_IS_A0;
  csr->flags &= ~LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR;
  break;
 case 128:
  csr->flags |= LAN743X_CSR_FLAG_IS_B0;
  break;
 }

 result = lan743x_csr_light_reset(adapter);
 if (result)
  goto clean_up;
 return 0;
clean_up:
 return result;
}
