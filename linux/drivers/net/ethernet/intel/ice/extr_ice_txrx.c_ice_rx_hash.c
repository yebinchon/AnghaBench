
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rxdid; } ;
union ice_32b_rx_flex_desc {TYPE_2__ wb; } ;
typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ice_ring {TYPE_1__* netdev; } ;
struct ice_32b_rx_flex_desc_nic {int rss_hash; } ;
struct TYPE_3__ {int features; } ;


 scalar_t__ ICE_RXDID_FLEX_NIC ;
 int NETIF_F_RXHASH ;
 int ice_ptype_to_htype (int ) ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void
ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
     struct sk_buff *skb, u8 rx_ptype)
{
 struct ice_32b_rx_flex_desc_nic *nic_mdid;
 u32 hash;

 if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
  return;

 if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
  return;

 nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
 hash = le32_to_cpu(nic_mdid->rss_hash);
 skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
}
