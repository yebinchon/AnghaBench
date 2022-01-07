
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int pci_dev2; } ;
struct ef4_nic {int pci_dev; int net_dev; struct falcon_nic_data* nic_data; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 int EF4_POPULATE_OWORD_2 (int ,int ,int ,int ,int) ;
 int EF4_POPULATE_OWORD_7 (int ,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int ,int ,int) ;
 int ETIMEDOUT ;
 int FFE_AB_EXT_PHY_RST_DUR_10240US ;
 int FRF_AB_EE_RST_CTL ;
 int FRF_AB_EXT_PHY_RST_CTL ;
 int FRF_AB_EXT_PHY_RST_DUR ;
 int FRF_AB_PCIE_CORE_RST_CTL ;
 int FRF_AB_PCIE_NSTKY_RST_CTL ;
 int FRF_AB_PCIE_SD_RST_CTL ;
 int FRF_AB_SWRST ;
 int FR_AB_GLB_CTL ;
 int HZ ;
 int RESET_TYPE (int) ;
 int RESET_TYPE_INVISIBLE ;
 int RESET_TYPE_WORLD ;
 int drv ;
 scalar_t__ ef4_nic_is_dual_func (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,...) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int __falcon_reset_hw(struct ef4_nic *efx, enum reset_type method)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 ef4_oword_t glb_ctl_reg_ker;
 int rc;

 netif_dbg(efx, hw, efx->net_dev, "performing %s hardware reset\n",
    RESET_TYPE(method));


 if (method == RESET_TYPE_WORLD) {
  rc = pci_save_state(efx->pci_dev);
  if (rc) {
   netif_err(efx, drv, efx->net_dev,
      "failed to backup PCI state of primary "
      "function prior to hardware reset\n");
   goto fail1;
  }
  if (ef4_nic_is_dual_func(efx)) {
   rc = pci_save_state(nic_data->pci_dev2);
   if (rc) {
    netif_err(efx, drv, efx->net_dev,
       "failed to backup PCI state of "
       "secondary function prior to "
       "hardware reset\n");
    goto fail2;
   }
  }

  EF4_POPULATE_OWORD_2(glb_ctl_reg_ker,
         FRF_AB_EXT_PHY_RST_DUR,
         FFE_AB_EXT_PHY_RST_DUR_10240US,
         FRF_AB_SWRST, 1);
 } else {
  EF4_POPULATE_OWORD_7(glb_ctl_reg_ker,

         FRF_AB_EXT_PHY_RST_CTL,
         method == RESET_TYPE_INVISIBLE,

         FRF_AB_PCIE_CORE_RST_CTL, 1,
         FRF_AB_PCIE_NSTKY_RST_CTL, 1,
         FRF_AB_PCIE_SD_RST_CTL, 1,
         FRF_AB_EE_RST_CTL, 1,
         FRF_AB_EXT_PHY_RST_DUR,
         FFE_AB_EXT_PHY_RST_DUR_10240US,
         FRF_AB_SWRST, 1);
 }
 ef4_writeo(efx, &glb_ctl_reg_ker, FR_AB_GLB_CTL);

 netif_dbg(efx, hw, efx->net_dev, "waiting for hardware reset\n");
 schedule_timeout_uninterruptible(HZ / 20);


 if (method == RESET_TYPE_WORLD) {
  if (ef4_nic_is_dual_func(efx))
   pci_restore_state(nic_data->pci_dev2);
  pci_restore_state(efx->pci_dev);
  netif_dbg(efx, drv, efx->net_dev,
     "successfully restored PCI config\n");
 }


 ef4_reado(efx, &glb_ctl_reg_ker, FR_AB_GLB_CTL);
 if (EF4_OWORD_FIELD(glb_ctl_reg_ker, FRF_AB_SWRST) != 0) {
  rc = -ETIMEDOUT;
  netif_err(efx, hw, efx->net_dev,
     "timed out waiting for hardware reset\n");
  goto fail3;
 }
 netif_dbg(efx, hw, efx->net_dev, "hardware reset complete\n");

 return 0;


fail2:
 pci_restore_state(efx->pci_dev);
fail1:
fail3:
 return rc;
}
