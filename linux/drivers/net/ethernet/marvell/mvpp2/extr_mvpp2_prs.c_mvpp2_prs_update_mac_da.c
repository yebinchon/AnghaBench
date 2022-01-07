
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int const* dev_addr; } ;
struct mvpp2_port {int dummy; } ;


 int ether_addr_copy (int const*,int const*) ;
 int mvpp2_prs_mac_da_accept (struct mvpp2_port*,int const*,int) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

int mvpp2_prs_update_mac_da(struct net_device *dev, const u8 *da)
{
 struct mvpp2_port *port = netdev_priv(dev);
 int err;


 err = mvpp2_prs_mac_da_accept(port, dev->dev_addr, 0);
 if (err)
  return err;


 err = mvpp2_prs_mac_da_accept(port, da, 1);
 if (err)
  return err;


 ether_addr_copy(dev->dev_addr, da);

 return 0;
}
