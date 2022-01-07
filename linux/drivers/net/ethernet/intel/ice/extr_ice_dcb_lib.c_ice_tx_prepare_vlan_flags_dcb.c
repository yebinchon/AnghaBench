
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_ethhdr {int h_vlan_TCI; } ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ice_tx_buf {int tx_flags; struct sk_buff* skb; } ;
struct ice_ring {TYPE_2__* vsi; } ;
struct TYPE_4__ {TYPE_1__* back; } ;
struct TYPE_3__ {int flags; } ;


 int ICE_FLAG_DCB_ENA ;
 int ICE_TX_FLAGS_HW_VLAN ;
 int ICE_TX_FLAGS_SW_VLAN ;
 int ICE_TX_FLAGS_VLAN_PR_M ;
 int ICE_TX_FLAGS_VLAN_PR_S ;
 int ICE_TX_FLAGS_VLAN_S ;
 int TC_PRIO_CONTROL ;
 int htons (int) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 int test_bit (int ,int ) ;

int
ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
         struct ice_tx_buf *first)
{
 struct sk_buff *skb = first->skb;

 if (!test_bit(ICE_FLAG_DCB_ENA, tx_ring->vsi->back->flags))
  return 0;


 if ((first->tx_flags & (ICE_TX_FLAGS_HW_VLAN | ICE_TX_FLAGS_SW_VLAN)) ||
     skb->priority != TC_PRIO_CONTROL) {
  first->tx_flags &= ~ICE_TX_FLAGS_VLAN_PR_M;

  first->tx_flags |= (skb->priority & 0x7) <<
       ICE_TX_FLAGS_VLAN_PR_S;
  if (first->tx_flags & ICE_TX_FLAGS_SW_VLAN) {
   struct vlan_ethhdr *vhdr;
   int rc;

   rc = skb_cow_head(skb, 0);
   if (rc < 0)
    return rc;
   vhdr = (struct vlan_ethhdr *)skb->data;
   vhdr->h_vlan_TCI = htons(first->tx_flags >>
       ICE_TX_FLAGS_VLAN_S);
  } else {
   first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
  }
 }

 return 0;
}
