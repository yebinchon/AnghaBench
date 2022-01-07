
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct udphdr {void* len; int dest; int source; } ;
struct sk_buff {int len; void* protocol; } ;
struct iphdr {int version; int ihl; int ttl; scalar_t__ check; void* tot_len; scalar_t__ frag_off; void* daddr; void* saddr; int protocol; } ;
struct ethhdr {void* h_proto; int h_source; int h_dest; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPPROTO_UDP ;
 int NLMSG_GOODSIZE ;
 int NSIM_TRAP_L4_DATA_LEN ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int eth_random_addr (int ) ;
 int get_random_bytes (int *,int) ;
 void* htons (int) ;
 void* in_aton (char*) ;
 scalar_t__ ip_fast_csum (unsigned char*,int) ;
 void* skb_put (struct sk_buff*,int) ;
 struct udphdr* skb_put_zero (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *nsim_dev_trap_skb_build(void)
{
 int tot_len, data_len = NSIM_TRAP_L4_DATA_LEN;
 struct sk_buff *skb;
 struct udphdr *udph;
 struct ethhdr *eth;
 struct iphdr *iph;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);
 tot_len = sizeof(struct iphdr) + sizeof(struct udphdr) + data_len;

 skb_reset_mac_header(skb);
 eth = skb_put(skb, sizeof(struct ethhdr));
 eth_random_addr(eth->h_dest);
 eth_random_addr(eth->h_source);
 eth->h_proto = htons(ETH_P_IP);
 skb->protocol = htons(ETH_P_IP);

 skb_set_network_header(skb, skb->len);
 iph = skb_put(skb, sizeof(struct iphdr));
 iph->protocol = IPPROTO_UDP;
 iph->saddr = in_aton("192.0.2.1");
 iph->daddr = in_aton("198.51.100.1");
 iph->version = 0x4;
 iph->frag_off = 0;
 iph->ihl = 0x5;
 iph->tot_len = htons(tot_len);
 iph->ttl = 100;
 iph->check = 0;
 iph->check = ip_fast_csum((unsigned char *)iph, iph->ihl);

 skb_set_transport_header(skb, skb->len);
 udph = skb_put_zero(skb, sizeof(struct udphdr) + data_len);
 get_random_bytes(&udph->source, sizeof(u16));
 get_random_bytes(&udph->dest, sizeof(u16));
 udph->len = htons(sizeof(struct udphdr) + data_len);

 return skb;
}
