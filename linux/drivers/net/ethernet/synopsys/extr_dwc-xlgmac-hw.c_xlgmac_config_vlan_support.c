
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xlgmac_pdata {TYPE_1__* netdev; scalar_t__ mac_regs; } ;
struct TYPE_2__ {int features; } ;


 scalar_t__ MAC_VLANIR ;
 int MAC_VLANIR_CSVL_LEN ;
 int MAC_VLANIR_CSVL_POS ;
 int MAC_VLANIR_VLTI_LEN ;
 int MAC_VLANIR_VLTI_POS ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int xlgmac_disable_rx_vlan_filtering (struct xlgmac_pdata*) ;
 int xlgmac_disable_rx_vlan_stripping (struct xlgmac_pdata*) ;
 int xlgmac_enable_rx_vlan_filtering (struct xlgmac_pdata*) ;
 int xlgmac_enable_rx_vlan_stripping (struct xlgmac_pdata*) ;
 int xlgmac_update_vlan_hash_table (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_config_vlan_support(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MAC_VLANIR);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANIR_CSVL_POS,
         MAC_VLANIR_CSVL_LEN, 0);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANIR_VLTI_POS,
         MAC_VLANIR_VLTI_LEN, 1);
 writel(regval, pdata->mac_regs + MAC_VLANIR);


 xlgmac_update_vlan_hash_table(pdata);

 if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
  xlgmac_enable_rx_vlan_filtering(pdata);
 else
  xlgmac_disable_rx_vlan_filtering(pdata);

 if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
  xlgmac_enable_rx_vlan_stripping(pdata);
 else
  xlgmac_disable_rx_vlan_stripping(pdata);
}
