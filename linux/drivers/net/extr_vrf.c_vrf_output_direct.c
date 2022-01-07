
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dev; int protocol; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ETH_P_IP ;
 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int NFPROTO_IPV4 ;
 int NF_HOOK_COND (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int htons (int ) ;
 int vrf_finish_direct ;

__attribute__((used)) static int vrf_output_direct(struct net *net, struct sock *sk,
        struct sk_buff *skb)
{
 skb->protocol = htons(ETH_P_IP);

 return NF_HOOK_COND(NFPROTO_IPV4, NF_INET_POST_ROUTING,
       net, sk, skb, ((void*)0), skb->dev,
       vrf_finish_direct,
       !(IPCB(skb)->flags & IPSKB_REROUTED));
}
