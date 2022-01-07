
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int MAC_PFR ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int PR ;
 unsigned int XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,TYPE_1__*,char*,char*) ;
 int xgbe_disable_rx_vlan_filtering (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_vlan_filtering (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_set_promiscuous_mode(struct xgbe_prv_data *pdata,
         unsigned int enable)
{
 unsigned int val = enable ? 1 : 0;

 if (XGMAC_IOREAD_BITS(pdata, MAC_PFR, PR) == val)
  return 0;

 netif_dbg(pdata, drv, pdata->netdev, "%s promiscuous mode\n",
    enable ? "entering" : "leaving");
 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, PR, val);


 if (enable) {
  xgbe_disable_rx_vlan_filtering(pdata);
 } else {
  if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
   xgbe_enable_rx_vlan_filtering(pdata);
 }

 return 0;
}
