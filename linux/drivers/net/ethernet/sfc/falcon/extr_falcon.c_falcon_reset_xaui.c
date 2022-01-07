
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {scalar_t__ stats_disable_count; } ;
struct ef4_nic {int net_dev; struct falcon_nic_data* nic_data; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 int EF4_POPULATE_OWORD_1 (int ,int ,int) ;
 int ETIMEDOUT ;
 int FRF_AB_XX_RST_XX_EN ;
 int FRF_AB_XX_SD_RST_ACT ;
 int FR_AB_XX_PWR_RST ;
 int WARN_ON (int) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_setup_xaui (struct ef4_nic*) ;
 int hw ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int udelay (int) ;

int falcon_reset_xaui(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 ef4_oword_t reg;
 int count;


 WARN_ON(nic_data->stats_disable_count == 0);


 EF4_POPULATE_OWORD_1(reg, FRF_AB_XX_RST_XX_EN, 1);
 ef4_writeo(efx, &reg, FR_AB_XX_PWR_RST);


 for (count = 0; count < 1000; count++) {
  ef4_reado(efx, &reg, FR_AB_XX_PWR_RST);
  if (EF4_OWORD_FIELD(reg, FRF_AB_XX_RST_XX_EN) == 0 &&
      EF4_OWORD_FIELD(reg, FRF_AB_XX_SD_RST_ACT) == 0) {
   falcon_setup_xaui(efx);
   return 0;
  }
  udelay(10);
 }
 netif_err(efx, hw, efx->net_dev,
    "timed out waiting for XAUI/XGXS reset\n");
 return -ETIMEDOUT;
}
