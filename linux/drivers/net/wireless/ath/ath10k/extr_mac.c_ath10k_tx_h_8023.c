
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rfc1042_hdr {int snap_type; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ethhdr {int h_proto; int * h_source; int * h_dest; } ;
typedef int __be16 ;


 int ETH_ALEN ;
 int ether_addr_copy (int *,int *) ;
 int * ieee80211_get_DA (struct ieee80211_hdr*) ;
 int * ieee80211_get_SA (struct ieee80211_hdr*) ;
 size_t ieee80211_hdrlen (int ) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void ath10k_tx_h_8023(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr;
 struct rfc1042_hdr *rfc1042;
 struct ethhdr *eth;
 size_t hdrlen;
 u8 da[ETH_ALEN];
 u8 sa[ETH_ALEN];
 __be16 type;

 hdr = (void *)skb->data;
 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 rfc1042 = (void *)skb->data + hdrlen;

 ether_addr_copy(da, ieee80211_get_DA(hdr));
 ether_addr_copy(sa, ieee80211_get_SA(hdr));
 type = rfc1042->snap_type;

 skb_pull(skb, hdrlen + sizeof(*rfc1042));
 skb_push(skb, sizeof(*eth));

 eth = (void *)skb->data;
 ether_addr_copy(eth->h_dest, da);
 ether_addr_copy(eth->h_source, sa);
 eth->h_proto = type;
}
