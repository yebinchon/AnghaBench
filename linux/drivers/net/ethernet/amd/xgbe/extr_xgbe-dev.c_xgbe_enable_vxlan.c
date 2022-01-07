
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vxn; } ;
struct xgbe_prv_data {int netdev; TYPE_1__ hw_feat; } ;


 int MAC_PFR ;
 int MAC_TCR ;
 int VNE ;
 int VNM ;
 int VUCC ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_set_vxlan_id (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_enable_vxlan(struct xgbe_prv_data *pdata)
{
 if (!pdata->hw_feat.vxn)
  return;


 xgbe_set_vxlan_id(pdata);


 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, VUCC, 1);


 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, VNM, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, VNE, 1);

 netif_dbg(pdata, drv, pdata->netdev, "VXLAN acceleration enabled\n");
}
