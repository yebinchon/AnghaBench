
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int ENODEV ;
 struct net_device* ERR_PTR (int ) ;
 size_t MACSEC_ATTR_IFINDEX ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 int netif_is_macsec (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static struct net_device *get_dev_from_nl(struct net *net,
       struct nlattr **attrs)
{
 int ifindex = nla_get_u32(attrs[MACSEC_ATTR_IFINDEX]);
 struct net_device *dev;

 dev = __dev_get_by_index(net, ifindex);
 if (!dev)
  return ERR_PTR(-ENODEV);

 if (!netif_is_macsec(dev))
  return ERR_PTR(-ENODEV);

 return dev;
}
