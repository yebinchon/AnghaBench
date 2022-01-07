
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int net_dev; } ;
typedef int ef4_oword_t ;


 int EF4_OWORD_FIELD (int ,int ) ;
 int EF4_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
 int ETIMEDOUT ;
 int FRF_AB_GPIO1_OEN ;
 int FRF_AB_GPIO1_OUT ;
 int FRF_AZ_SRM_INIT_EN ;
 int FRF_AZ_SRM_NB_SZ ;
 int FR_AB_GPIO_CTL ;
 int FR_AZ_SRM_CFG ;
 int HZ ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,...) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int falcon_reset_sram(struct ef4_nic *efx)
{
 ef4_oword_t srm_cfg_reg_ker, gpio_cfg_reg_ker;
 int count;


 ef4_reado(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);
 EF4_SET_OWORD_FIELD(gpio_cfg_reg_ker, FRF_AB_GPIO1_OEN, 1);
 EF4_SET_OWORD_FIELD(gpio_cfg_reg_ker, FRF_AB_GPIO1_OUT, 1);
 ef4_writeo(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);


 EF4_POPULATE_OWORD_2(srm_cfg_reg_ker,
        FRF_AZ_SRM_INIT_EN, 1,
        FRF_AZ_SRM_NB_SZ, 0);
 ef4_writeo(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);


 count = 0;
 do {
  netif_dbg(efx, hw, efx->net_dev,
     "waiting for SRAM reset (attempt %d)...\n", count);


  schedule_timeout_uninterruptible(HZ / 50);


  ef4_reado(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);
  if (!EF4_OWORD_FIELD(srm_cfg_reg_ker, FRF_AZ_SRM_INIT_EN)) {
   netif_dbg(efx, hw, efx->net_dev,
      "SRAM reset complete\n");

   return 0;
  }
 } while (++count < 20);

 netif_err(efx, hw, efx->net_dev, "timed out waiting for SRAM reset\n");
 return -ETIMEDOUT;
}
