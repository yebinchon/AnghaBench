
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {int h_proto; } ;
typedef struct ethhdr u8 ;
struct sk_buff {struct ethhdr* data; } ;
struct ath6kl_llc_snap_hdr {int eth_type; } ;
typedef int eth_hdr ;


 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 int memcpy (struct ethhdr*,struct ethhdr*,int) ;
 int skb_pull (struct sk_buff*,int) ;

int ath6kl_wmi_dot3_2_dix(struct sk_buff *skb)
{
 struct ath6kl_llc_snap_hdr *llc_hdr;
 struct ethhdr eth_hdr;
 u8 *datap;

 if (WARN_ON(skb == ((void*)0)))
  return -EINVAL;

 datap = skb->data;

 memcpy(&eth_hdr, datap, sizeof(eth_hdr));

 llc_hdr = (struct ath6kl_llc_snap_hdr *) (datap + sizeof(eth_hdr));
 eth_hdr.h_proto = llc_hdr->eth_type;

 skb_pull(skb, sizeof(struct ath6kl_llc_snap_hdr));
 datap = skb->data;

 memcpy(datap, &eth_hdr, sizeof(eth_hdr));

 return 0;
}
