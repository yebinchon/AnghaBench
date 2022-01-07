
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int * netdev_ops; } ;
struct net {int dummy; } ;
struct gtp_dev {int dummy; } ;


 size_t GTPA_LINK ;
 size_t GTPA_NET_NS_FD ;
 scalar_t__ IS_ERR (struct net*) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int ) ;
 struct net* get_net (struct net*) ;
 struct net* get_net_ns_by_fd (int ) ;
 int gtp_netdev_ops ;
 struct gtp_dev* netdev_priv (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int put_net (struct net*) ;

__attribute__((used)) static struct gtp_dev *gtp_find_dev(struct net *src_net, struct nlattr *nla[])
{
 struct gtp_dev *gtp = ((void*)0);
 struct net_device *dev;
 struct net *net;




 if (nla[GTPA_NET_NS_FD])
  net = get_net_ns_by_fd(nla_get_u32(nla[GTPA_NET_NS_FD]));
 else
  net = get_net(src_net);

 if (IS_ERR(net))
  return ((void*)0);


 dev = dev_get_by_index_rcu(net, nla_get_u32(nla[GTPA_LINK]));
 if (dev && dev->netdev_ops == &gtp_netdev_ops)
  gtp = netdev_priv(dev);

 put_net(net);
 return gtp;
}
