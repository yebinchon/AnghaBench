
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct lan78xx_net {TYPE_1__* net; } ;
struct TYPE_2__ {int features; } ;


 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int RX_CMD_A_FVTG_ ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int htons (int ) ;

__attribute__((used)) static void lan78xx_rx_vlan_offload(struct lan78xx_net *dev,
        struct sk_buff *skb,
        u32 rx_cmd_a, u32 rx_cmd_b)
{
 if ((dev->net->features & NETIF_F_HW_VLAN_CTAG_RX) &&
     (rx_cmd_a & RX_CMD_A_FVTG_))
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
           (rx_cmd_b & 0xffff));
}
