
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tb ;
struct vxlan_config {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net_device* ERR_PTR (int) ;
 int IFLA_MAX ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int LIST_HEAD (int ) ;
 int __vxlan_dev_create (struct net*,struct net_device*,struct vxlan_config*,int *) ;
 int free_netdev (struct net_device*) ;
 int list_kill ;
 int memset (struct nlattr***,int ,int) ;
 int rtnl_configure_link (struct net_device*,int *) ;
 struct net_device* rtnl_create_link (struct net*,char const*,int ,int *,struct nlattr**,int *) ;
 int unregister_netdevice_many (int *) ;
 int vxlan_dellink (struct net_device*,int *) ;
 int vxlan_link_ops ;

struct net_device *vxlan_dev_create(struct net *net, const char *name,
        u8 name_assign_type,
        struct vxlan_config *conf)
{
 struct nlattr *tb[IFLA_MAX + 1];
 struct net_device *dev;
 int err;

 memset(&tb, 0, sizeof(tb));

 dev = rtnl_create_link(net, name, name_assign_type,
          &vxlan_link_ops, tb, ((void*)0));
 if (IS_ERR(dev))
  return dev;

 err = __vxlan_dev_create(net, dev, conf, ((void*)0));
 if (err < 0) {
  free_netdev(dev);
  return ERR_PTR(err);
 }

 err = rtnl_configure_link(dev, ((void*)0));
 if (err < 0) {
  LIST_HEAD(list_kill);

  vxlan_dellink(dev, &list_kill);
  unregister_netdevice_many(&list_kill);
  return ERR_PTR(err);
 }

 return dev;
}
