
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; int h_vlan_TCI; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; } ;
struct i40e_ring {TYPE_3__* vsi; TYPE_1__* netdev; } ;
typedef int _vhdr ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {TYPE_2__* back; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int features; } ;


 int EINVAL ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int I40E_FLAG_DCB_ENABLED ;
 int I40E_TX_FLAGS_HW_VLAN ;
 int I40E_TX_FLAGS_SW_VLAN ;
 int I40E_TX_FLAGS_VLAN_PRIO_MASK ;
 int I40E_TX_FLAGS_VLAN_PRIO_SHIFT ;
 int I40E_TX_FLAGS_VLAN_SHIFT ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int TC_PRIO_CONTROL ;
 scalar_t__ htons (int) ;
 int ntohs (int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff*,int ,int,struct vlan_hdr*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static inline int i40e_tx_prepare_vlan_flags(struct sk_buff *skb,
          struct i40e_ring *tx_ring,
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
  tx_flags |= skb_vlan_tag_get(skb) << I40E_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= I40E_TX_FLAGS_HW_VLAN;

 } else if (protocol == htons(ETH_P_8021Q)) {
  struct vlan_hdr *vhdr, _vhdr;

  vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
  if (!vhdr)
   return -EINVAL;

  protocol = vhdr->h_vlan_encapsulated_proto;
  tx_flags |= ntohs(vhdr->h_vlan_TCI) << I40E_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= I40E_TX_FLAGS_SW_VLAN;
 }

 if (!(tx_ring->vsi->back->flags & I40E_FLAG_DCB_ENABLED))
  goto out;


 if ((tx_flags & (I40E_TX_FLAGS_HW_VLAN | I40E_TX_FLAGS_SW_VLAN)) ||
     (skb->priority != TC_PRIO_CONTROL)) {
  tx_flags &= ~I40E_TX_FLAGS_VLAN_PRIO_MASK;
  tx_flags |= (skb->priority & 0x7) <<
    I40E_TX_FLAGS_VLAN_PRIO_SHIFT;
  if (tx_flags & I40E_TX_FLAGS_SW_VLAN) {
   struct vlan_ethhdr *vhdr;
   int rc;

   rc = skb_cow_head(skb, 0);
   if (rc < 0)
    return rc;
   vhdr = (struct vlan_ethhdr *)skb->data;
   vhdr->h_vlan_TCI = htons(tx_flags >>
       I40E_TX_FLAGS_VLAN_SHIFT);
  } else {
   tx_flags |= I40E_TX_FLAGS_HW_VLAN;
  }
 }

out:
 *flags = tx_flags;
 return 0;
}
