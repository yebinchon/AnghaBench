
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_hdr {int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct ice_tx_buf {int tx_flags; struct sk_buff* skb; } ;
struct ice_ring {TYPE_1__* netdev; } ;
typedef int _vhdr ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int features; } ;


 int EINVAL ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ICE_TX_FLAGS_HW_VLAN ;
 int ICE_TX_FLAGS_SW_VLAN ;
 int ICE_TX_FLAGS_VLAN_S ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 scalar_t__ htons (int ) ;
 int ice_tx_prepare_vlan_flags_dcb (struct ice_ring*,struct ice_tx_buf*) ;
 int ntohs (int ) ;
 scalar_t__ skb_header_pointer (struct sk_buff*,int ,int,struct vlan_hdr*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static int
ice_tx_prepare_vlan_flags(struct ice_ring *tx_ring, struct ice_tx_buf *first)
{
 struct sk_buff *skb = first->skb;
 __be16 protocol = skb->protocol;

 if (protocol == htons(ETH_P_8021Q) &&
     !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {







  skb->protocol = vlan_get_protocol(skb);
  return 0;
 }


 if (skb_vlan_tag_present(skb)) {
  first->tx_flags |= skb_vlan_tag_get(skb) << ICE_TX_FLAGS_VLAN_S;
  first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
 } else if (protocol == htons(ETH_P_8021Q)) {
  struct vlan_hdr *vhdr, _vhdr;


  vhdr = (struct vlan_hdr *)skb_header_pointer(skb, ETH_HLEN,
            sizeof(_vhdr),
            &_vhdr);
  if (!vhdr)
   return -EINVAL;

  first->tx_flags |= ntohs(vhdr->h_vlan_TCI) <<
       ICE_TX_FLAGS_VLAN_S;
  first->tx_flags |= ICE_TX_FLAGS_SW_VLAN;
 }

 return ice_tx_prepare_vlan_flags_dcb(tx_ring, first);
}
