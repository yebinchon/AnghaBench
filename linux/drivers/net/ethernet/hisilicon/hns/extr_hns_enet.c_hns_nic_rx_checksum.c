
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int ip_summed; } ;
struct net_device {int features; } ;
struct TYPE_2__ {struct net_device* dev; } ;
struct hns_nic_ring_data {TYPE_1__ napi; } ;


 int CHECKSUM_UNNECESSARY ;
 int HNS_RXD_FRAG_B ;
 int HNS_RXD_L3E_B ;
 int HNS_RXD_L3ID_M ;
 int HNS_RXD_L3ID_S ;
 int HNS_RXD_L4E_B ;
 int HNS_RXD_L4ID_M ;
 int HNS_RXD_L4ID_S ;
 scalar_t__ HNS_RX_FLAG_L3ID_IPV4 ;
 scalar_t__ HNS_RX_FLAG_L3ID_IPV6 ;
 scalar_t__ HNS_RX_FLAG_L4ID_SCTP ;
 scalar_t__ HNS_RX_FLAG_L4ID_TCP ;
 scalar_t__ HNS_RX_FLAG_L4ID_UDP ;
 int NETIF_F_RXCSUM ;
 int hnae_get_bit (scalar_t__,int ) ;
 scalar_t__ hnae_get_field (scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void hns_nic_rx_checksum(struct hns_nic_ring_data *ring_data,
    struct sk_buff *skb, u32 flag)
{
 struct net_device *netdev = ring_data->napi.dev;
 u32 l3id;
 u32 l4id;


 if (unlikely(!(netdev->features & NETIF_F_RXCSUM)))
  return;
 l3id = hnae_get_field(flag, HNS_RXD_L3ID_M, HNS_RXD_L3ID_S);
 l4id = hnae_get_field(flag, HNS_RXD_L4ID_M, HNS_RXD_L4ID_S);


 if ((l3id != HNS_RX_FLAG_L3ID_IPV4) && (l3id != HNS_RX_FLAG_L3ID_IPV6))
  return;


 if (unlikely(hnae_get_bit(flag, HNS_RXD_L3E_B)))
  return;


 if (unlikely(hnae_get_bit(flag, HNS_RXD_FRAG_B)))
  return;


 if ((l4id != HNS_RX_FLAG_L4ID_TCP) &&
     (l4id != HNS_RX_FLAG_L4ID_UDP) &&
     (l4id != HNS_RX_FLAG_L4ID_SCTP))
  return;


 if (unlikely(hnae_get_bit(flag, HNS_RXD_L4E_B)))
  return;


 skb->ip_summed = CHECKSUM_UNNECESSARY;
}
