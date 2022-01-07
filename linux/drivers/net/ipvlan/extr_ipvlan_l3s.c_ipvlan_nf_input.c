
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; int dev; } ;
struct nf_hook_state {int dummy; } ;
struct ipvl_addr {TYPE_1__* master; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int ETH_HLEN ;
 unsigned int NF_ACCEPT ;
 int ipvlan_count_rx (TYPE_1__*,unsigned int,int,int) ;
 struct ipvl_addr* ipvlan_skb_to_addr (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int ipvlan_nf_input(void *priv, struct sk_buff *skb,
        const struct nf_hook_state *state)
{
 struct ipvl_addr *addr;
 unsigned int len;

 addr = ipvlan_skb_to_addr(skb, skb->dev);
 if (!addr)
  goto out;

 skb->dev = addr->master->dev;
 len = skb->len + ETH_HLEN;
 ipvlan_count_rx(addr->master, len, 1, 0);
out:
 return NF_ACCEPT;
}
