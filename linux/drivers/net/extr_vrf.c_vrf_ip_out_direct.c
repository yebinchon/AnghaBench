
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int NFPROTO_IPV4 ;
 int NF_INET_LOCAL_OUT ;
 struct net* dev_net (struct net_device*) ;
 scalar_t__ likely (int) ;
 int nf_hook (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,struct net_device*,int (*) (struct net*,struct sock*,struct sk_buff*)) ;
 int nf_reset_ct (struct sk_buff*) ;
 int vrf_output_direct (struct net*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *vrf_ip_out_direct(struct net_device *vrf_dev,
      struct sock *sk,
      struct sk_buff *skb)
{
 struct net *net = dev_net(vrf_dev);
 int err;

 skb->dev = vrf_dev;

 err = nf_hook(NFPROTO_IPV4, NF_INET_LOCAL_OUT, net, sk,
        skb, ((void*)0), vrf_dev, vrf_output_direct);

 if (likely(err == 1))
  err = vrf_output_direct(net, sk, skb);


 if (likely(err == 1))
  nf_reset_ct(skb);
 else
  skb = ((void*)0);

 return skb;
}
