
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vxn; } ;
struct xgbe_prv_data {int netdev; TYPE_1__ hw_feat; } ;


 int MAC_PFR ;
 int MAC_TCR ;
 int MAC_TIR ;
 int TNID ;
 int VNE ;
 int VUCC ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;

__attribute__((used)) static void xgbe_disable_vxlan(struct xgbe_prv_data *pdata)
{
 if (!pdata->hw_feat.vxn)
  return;


 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, VNE, 0);


 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, VUCC, 0);


 XGMAC_IOWRITE_BITS(pdata, MAC_TIR, TNID, 0);

 netif_dbg(pdata, drv, pdata->netdev, "VXLAN acceleration disabled\n");
}
