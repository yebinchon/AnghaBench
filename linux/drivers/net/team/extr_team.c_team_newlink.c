
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 size_t IFLA_ADDRESS ;
 int eth_hw_addr_random (struct net_device*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int team_newlink(struct net *src_net, struct net_device *dev,
   struct nlattr *tb[], struct nlattr *data[],
   struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS] == ((void*)0))
  eth_hw_addr_random(dev);

 return register_netdevice(dev);
}
