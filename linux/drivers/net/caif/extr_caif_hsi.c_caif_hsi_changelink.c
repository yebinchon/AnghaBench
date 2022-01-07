
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int cfhsi_netlink_parms (struct nlattr**,int ) ;
 int netdev_priv (struct net_device*) ;
 int netdev_state_change (struct net_device*) ;

__attribute__((used)) static int caif_hsi_changelink(struct net_device *dev, struct nlattr *tb[],
          struct nlattr *data[],
          struct netlink_ext_ack *extack)
{
 cfhsi_netlink_parms(data, netdev_priv(dev));
 netdev_state_change(dev);
 return 0;
}
