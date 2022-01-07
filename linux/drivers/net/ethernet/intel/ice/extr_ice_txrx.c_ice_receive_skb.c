
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ice_ring {TYPE_2__* q_vector; TYPE_1__* netdev; } ;
struct TYPE_4__ {int napi; } ;
struct TYPE_3__ {int features; } ;


 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int htons (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;

__attribute__((used)) static void
ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
{
 if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
     (vlan_tag & VLAN_VID_MASK))
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
 napi_gro_receive(&rx_ring->q_vector->napi, skb);
}
