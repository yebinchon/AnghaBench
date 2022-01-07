
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct rocker_port {int dummy; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int rocker_cmd_set_port_settings_macaddr (struct rocker_port*,int ) ;

__attribute__((used)) static int rocker_port_set_mac_address(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct rocker_port *rocker_port = netdev_priv(dev);
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 err = rocker_cmd_set_port_settings_macaddr(rocker_port, addr->sa_data);
 if (err)
  return err;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 return 0;
}
