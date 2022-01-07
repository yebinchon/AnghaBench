
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; TYPE_1__* rx_ring; int active_vlans; } ;
struct TYPE_2__ {int napi; } ;


 int E1000_RXDEXT_STATERR_LB ;
 int E1000_RXD_SPC_VLAN_MASK ;
 int E1000_RXD_STAT_VP ;
 int ETH_P_8021Q ;
 int IGBVF_FLAG_RX_LB_VLAN_BSWAP ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int be16_to_cpu (int) ;
 int htons (int ) ;
 int le16_to_cpu (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void igbvf_receive_skb(struct igbvf_adapter *adapter,
         struct net_device *netdev,
         struct sk_buff *skb,
         u32 status, u16 vlan)
{
 u16 vid;

 if (status & E1000_RXD_STAT_VP) {
  if ((adapter->flags & IGBVF_FLAG_RX_LB_VLAN_BSWAP) &&
      (status & E1000_RXDEXT_STATERR_LB))
   vid = be16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
  else
   vid = le16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;
  if (test_bit(vid, adapter->active_vlans))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
 }

 napi_gro_receive(&adapter->rx_ring->napi, skb);
}
