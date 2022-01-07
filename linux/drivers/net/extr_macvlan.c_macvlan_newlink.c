
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int macvlan_common_newlink (struct net*,struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;

__attribute__((used)) static int macvlan_newlink(struct net *src_net, struct net_device *dev,
      struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 return macvlan_common_newlink(src_net, dev, tb, data, extack);
}
