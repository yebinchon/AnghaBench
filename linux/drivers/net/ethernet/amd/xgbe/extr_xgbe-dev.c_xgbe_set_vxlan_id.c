
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int vxlan_port; int netdev; } ;


 int MAC_TIR ;
 int TNID ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,int ) ;

__attribute__((used)) static void xgbe_set_vxlan_id(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_TIR, TNID, pdata->vxlan_port);

 netif_dbg(pdata, drv, pdata->netdev, "VXLAN tunnel id set to %hx\n",
    pdata->vxlan_port);
}
