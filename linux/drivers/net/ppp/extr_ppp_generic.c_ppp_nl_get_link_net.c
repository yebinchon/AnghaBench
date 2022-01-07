
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp {struct net* ppp_net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct ppp* netdev_priv (struct net_device const*) ;

__attribute__((used)) static struct net *ppp_nl_get_link_net(const struct net_device *dev)
{
 struct ppp *ppp = netdev_priv(dev);

 return ppp->ppp_net;
}
