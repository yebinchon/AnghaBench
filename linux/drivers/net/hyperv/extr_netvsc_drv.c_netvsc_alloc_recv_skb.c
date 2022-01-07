
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ protocol; int ip_summed; } ;
struct TYPE_3__ {int cnt; int * len; int * data; int pktlen; struct ndis_tcp_ip_checksum_info* csum_info; struct ndis_pkt_8021q_info* vlan; } ;
struct napi_struct {int dummy; } ;
struct netvsc_channel {TYPE_1__ rsc; struct napi_struct napi; } ;
struct net_device {int features; } ;
struct TYPE_4__ {scalar_t__ udp_checksum_succeeded; scalar_t__ tcp_checksum_succeeded; scalar_t__ ip_checksum_succeeded; scalar_t__ ip_checksum_value_invalid; } ;
struct ndis_tcp_ip_checksum_info {TYPE_2__ receive; } ;
struct ndis_pkt_8021q_info {int vlanid; int pri; scalar_t__ cfi; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int NETIF_F_RXCSUM ;
 int VLAN_CFI_MASK ;
 int VLAN_PRIO_SHIFT ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,int) ;
 scalar_t__ eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ htons (int ) ;
 struct sk_buff* napi_alloc_skb (struct napi_struct*,int ) ;
 int netvsc_comp_ipcsum (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;

__attribute__((used)) static struct sk_buff *netvsc_alloc_recv_skb(struct net_device *net,
          struct netvsc_channel *nvchan)
{
 struct napi_struct *napi = &nvchan->napi;
 const struct ndis_pkt_8021q_info *vlan = nvchan->rsc.vlan;
 const struct ndis_tcp_ip_checksum_info *csum_info =
      nvchan->rsc.csum_info;
 struct sk_buff *skb;
 int i;

 skb = napi_alloc_skb(napi, nvchan->rsc.pktlen);
 if (!skb)
  return skb;





 for (i = 0; i < nvchan->rsc.cnt; i++)
  skb_put_data(skb, nvchan->rsc.data[i], nvchan->rsc.len[i]);

 skb->protocol = eth_type_trans(skb, net);


 skb_checksum_none_assert(skb);






 if (csum_info && csum_info->receive.ip_checksum_value_invalid &&
     csum_info->receive.ip_checksum_succeeded &&
     skb->protocol == htons(ETH_P_IP))
  netvsc_comp_ipcsum(skb);



 if (csum_info && (net->features & NETIF_F_RXCSUM)) {
  if (csum_info->receive.tcp_checksum_succeeded ||
      csum_info->receive.udp_checksum_succeeded)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }

 if (vlan) {
  u16 vlan_tci = vlan->vlanid | (vlan->pri << VLAN_PRIO_SHIFT) |
   (vlan->cfi ? VLAN_CFI_MASK : 0);

  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
           vlan_tci);
 }

 return skb;
}
