
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct iavf_ring {TYPE_1__* netdev; struct iavf_q_vector* q_vector; } ;
struct iavf_q_vector {int napi; } ;
struct TYPE_2__ {int features; } ;


 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int htons (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;

__attribute__((used)) static void iavf_receive_skb(struct iavf_ring *rx_ring,
        struct sk_buff *skb, u16 vlan_tag)
{
 struct iavf_q_vector *q_vector = rx_ring->q_vector;

 if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
     (vlan_tag & VLAN_VID_MASK))
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);

 napi_gro_receive(&q_vector->napi, skb);
}
