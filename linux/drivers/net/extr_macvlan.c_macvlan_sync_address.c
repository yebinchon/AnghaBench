
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; unsigned char* dev_addr; } ;
struct macvlan_port {unsigned char* perm_addr; } ;
struct macvlan_dev {struct macvlan_port* port; struct net_device* lowerdev; } ;


 int EADDRINUSE ;
 int IFF_UP ;
 int dev_uc_add (struct net_device*,unsigned char*) ;
 int dev_uc_del (struct net_device*,unsigned char*) ;
 int ether_addr_copy (unsigned char*,unsigned char*) ;
 scalar_t__ macvlan_addr_busy (struct macvlan_port*,unsigned char*) ;
 int macvlan_addr_change (struct macvlan_port*) ;
 int macvlan_clear_addr_change (struct macvlan_port*) ;
 int macvlan_hash_change_addr (struct macvlan_dev*,unsigned char*) ;
 scalar_t__ macvlan_passthru (struct macvlan_port*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_sync_address(struct net_device *dev, unsigned char *addr)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;
 struct macvlan_port *port = vlan->port;
 int err;

 if (!(dev->flags & IFF_UP)) {

  ether_addr_copy(dev->dev_addr, addr);
 } else {

  if (macvlan_addr_busy(vlan->port, addr))
   return -EADDRINUSE;

  if (!macvlan_passthru(port)) {
   err = dev_uc_add(lowerdev, addr);
   if (err)
    return err;

   dev_uc_del(lowerdev, dev->dev_addr);
  }

  macvlan_hash_change_addr(vlan, addr);
 }
 if (macvlan_passthru(port) && !macvlan_addr_change(port)) {




  ether_addr_copy(vlan->port->perm_addr,
    lowerdev->dev_addr);
 }
 macvlan_clear_addr_change(port);
 return 0;
}
