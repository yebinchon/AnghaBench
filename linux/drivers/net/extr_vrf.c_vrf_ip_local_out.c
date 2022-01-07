
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int NFPROTO_IPV4 ;
 int NF_INET_LOCAL_OUT ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int nf_hook (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int (*) (struct net*,struct sock*,struct sk_buff*)) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int vrf_ip_local_out(struct net *net, struct sock *sk,
       struct sk_buff *skb)
{
 int err;

 err = nf_hook(NFPROTO_IPV4, NF_INET_LOCAL_OUT, net, sk,
        skb, ((void*)0), skb_dst(skb)->dev, dst_output);
 if (likely(err == 1))
  err = dst_output(net, sk, skb);

 return err;
}
