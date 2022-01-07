
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int CSVL ;
 int MAC_VLANIR ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int VLTI ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int xgbe_disable_rx_vlan_filtering (struct xgbe_prv_data*) ;
 int xgbe_disable_rx_vlan_stripping (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_vlan_filtering (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_vlan_stripping (struct xgbe_prv_data*) ;
 int xgbe_update_vlan_hash_table (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_vlan_support(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_VLANIR, CSVL, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_VLANIR, VLTI, 1);


 xgbe_update_vlan_hash_table(pdata);

 if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
  xgbe_enable_rx_vlan_filtering(pdata);
 else
  xgbe_disable_rx_vlan_filtering(pdata);

 if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
  xgbe_enable_rx_vlan_stripping(pdata);
 else
  xgbe_disable_rx_vlan_stripping(pdata);
}
