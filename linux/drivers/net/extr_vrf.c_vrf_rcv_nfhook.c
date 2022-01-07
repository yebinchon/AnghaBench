
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net* dev_net (struct net_device*) ;
 int nf_hook (int ,unsigned int,struct net*,int *,struct sk_buff*,struct net_device*,int *,int ) ;
 int vrf_rcv_finish ;

__attribute__((used)) static struct sk_buff *vrf_rcv_nfhook(u8 pf, unsigned int hook,
          struct sk_buff *skb,
          struct net_device *dev)
{
 struct net *net = dev_net(dev);

 if (nf_hook(pf, hook, net, ((void*)0), skb, dev, ((void*)0), vrf_rcv_finish) != 1)
  skb = ((void*)0);

 return skb;
}
