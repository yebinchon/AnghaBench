
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vlan_ethhdr {scalar_t__ h_vlan_proto; int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ ip_summed; int data_len; int len; int csum; } ;
struct net_device {int features; } ;
typedef int skb_frag_t ;
typedef int __wsum ;
struct TYPE_2__ {int * frags; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int MXGEFW_PAD ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int VLAN_HLEN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,int ) ;
 int csum_partial (int *,int,int ) ;
 int csum_sub (int ,int ) ;
 scalar_t__ htons (int ) ;
 int memmove (int *,int *,int) ;
 int ntohs (int ) ;
 int skb_frag_off_add (int *,int) ;
 int skb_frag_size_sub (int *,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void
myri10ge_vlan_rx(struct net_device *dev, void *addr, struct sk_buff *skb)
{
 u8 *va;
 struct vlan_ethhdr *veh;
 skb_frag_t *frag;
 __wsum vsum;

 va = addr;
 va += MXGEFW_PAD;
 veh = (struct vlan_ethhdr *)va;
 if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) ==
     NETIF_F_HW_VLAN_CTAG_RX &&
     veh->h_vlan_proto == htons(ETH_P_8021Q)) {

  if (skb->ip_summed == CHECKSUM_COMPLETE) {
   vsum = csum_partial(va + ETH_HLEN, VLAN_HLEN, 0);
   skb->csum = csum_sub(skb->csum, vsum);
  }

  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), ntohs(veh->h_vlan_TCI));
  memmove(va + VLAN_HLEN, va, 2 * ETH_ALEN);
  skb->len -= VLAN_HLEN;
  skb->data_len -= VLAN_HLEN;
  frag = skb_shinfo(skb)->frags;
  skb_frag_off_add(frag, VLAN_HLEN);
  skb_frag_size_sub(frag, VLAN_HLEN);
 }
}
