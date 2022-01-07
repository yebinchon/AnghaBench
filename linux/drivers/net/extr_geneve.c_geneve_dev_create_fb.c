
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tb ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;


 struct net_device* ERR_PTR (int) ;
 int GENEVE_DF_UNSET ;
 int IFLA_MAX ;
 int IP_MAX_MTU ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int LIST_HEAD (int ) ;
 int free_netdev (struct net_device*) ;
 int geneve_change_mtu (struct net_device*,int ) ;
 int geneve_configure (struct net*,struct net_device*,int *,struct ip_tunnel_info*,int,int,int,int ) ;
 int geneve_dellink (struct net_device*,int *) ;
 int geneve_link_ops ;
 int init_tnl_info (struct ip_tunnel_info*,int ) ;
 int list_kill ;
 int memset (struct nlattr**,int ,int) ;
 int rtnl_configure_link (struct net_device*,int *) ;
 struct net_device* rtnl_create_link (struct net*,char const*,int ,int *,struct nlattr**,int *) ;
 int unregister_netdevice_many (int *) ;

struct net_device *geneve_dev_create_fb(struct net *net, const char *name,
     u8 name_assign_type, u16 dst_port)
{
 struct nlattr *tb[IFLA_MAX + 1];
 struct ip_tunnel_info info;
 struct net_device *dev;
 LIST_HEAD(list_kill);
 int err;

 memset(tb, 0, sizeof(tb));
 dev = rtnl_create_link(net, name, name_assign_type,
          &geneve_link_ops, tb, ((void*)0));
 if (IS_ERR(dev))
  return dev;

 init_tnl_info(&info, dst_port);
 err = geneve_configure(net, dev, ((void*)0), &info,
          1, 1, 0, GENEVE_DF_UNSET);
 if (err) {
  free_netdev(dev);
  return ERR_PTR(err);
 }




 err = geneve_change_mtu(dev, IP_MAX_MTU);
 if (err)
  goto err;

 err = rtnl_configure_link(dev, ((void*)0));
 if (err < 0)
  goto err;

 return dev;
err:
 geneve_dellink(dev, &list_kill);
 unregister_netdevice_many(&list_kill);
 return ERR_PTR(err);
}
