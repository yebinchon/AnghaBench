
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct iavf_ring {TYPE_1__* netdev; } ;
typedef int _vhdr ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int features; } ;


 int EINVAL ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int IAVF_TX_FLAGS_HW_VLAN ;
 int IAVF_TX_FLAGS_SW_VLAN ;
 int IAVF_TX_FLAGS_VLAN_SHIFT ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 scalar_t__ htons (int ) ;
 int ntohs (int ) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff*,int ,int,struct vlan_hdr*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static inline int iavf_tx_prepare_vlan_flags(struct sk_buff *skb,
          struct iavf_ring *tx_ring,
          u32 *flags)
{
 __be16 protocol = skb->protocol;
 u32 tx_flags = 0;

 if (protocol == htons(ETH_P_8021Q) &&
     !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {







  skb->protocol = vlan_get_protocol(skb);
  goto out;
 }


 if (skb_vlan_tag_present(skb)) {
  tx_flags |= skb_vlan_tag_get(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IAVF_TX_FLAGS_HW_VLAN;

 } else if (protocol == htons(ETH_P_8021Q)) {
  struct vlan_hdr *vhdr, _vhdr;

  vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
  if (!vhdr)
   return -EINVAL;

  protocol = vhdr->h_vlan_encapsulated_proto;
  tx_flags |= ntohs(vhdr->h_vlan_TCI) << IAVF_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IAVF_TX_FLAGS_SW_VLAN;
 }

out:
 *flags = tx_flags;
 return 0;
}
