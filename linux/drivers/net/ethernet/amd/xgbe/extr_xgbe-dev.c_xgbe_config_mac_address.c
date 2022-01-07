
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hash_table_size; } ;
struct xgbe_prv_data {TYPE_2__ hw_feat; TYPE_1__* netdev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int HMC ;
 int HPF ;
 int HUC ;
 int MAC_PFR ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int xgbe_set_mac_address (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_config_mac_address(struct xgbe_prv_data *pdata)
{
 xgbe_set_mac_address(pdata, pdata->netdev->dev_addr);


 if (pdata->hw_feat.hash_table_size) {
  XGMAC_IOWRITE_BITS(pdata, MAC_PFR, HPF, 1);
  XGMAC_IOWRITE_BITS(pdata, MAC_PFR, HUC, 1);
  XGMAC_IOWRITE_BITS(pdata, MAC_PFR, HMC, 1);
 }
}
