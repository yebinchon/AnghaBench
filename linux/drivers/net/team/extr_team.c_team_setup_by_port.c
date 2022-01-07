
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int broadcast; int mtu; int hard_header_len; int type; int header_ops; } ;


 int eth_hw_addr_inherit (struct net_device*,struct net_device*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void team_setup_by_port(struct net_device *dev,
          struct net_device *port_dev)
{
 dev->header_ops = port_dev->header_ops;
 dev->type = port_dev->type;
 dev->hard_header_len = port_dev->hard_header_len;
 dev->addr_len = port_dev->addr_len;
 dev->mtu = port_dev->mtu;
 memcpy(dev->broadcast, port_dev->broadcast, port_dev->addr_len);
 eth_hw_addr_inherit(dev, port_dev);
}
