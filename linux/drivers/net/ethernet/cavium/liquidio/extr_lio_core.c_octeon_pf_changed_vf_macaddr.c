
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_3__* props; } ;
struct net_device {int * dev_addr; } ;
struct TYPE_4__ {int macaddr_is_admin_asgnd; int hw_addr; } ;
struct lio {TYPE_1__ linfo; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_5__ {int dev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int NETDEV_CHANGEADDR ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_info (int *,char*,int *) ;
 int ether_addr_copy (int *,int *) ;
 int ether_addr_equal (int *,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void octeon_pf_changed_vf_macaddr(struct octeon_device *oct, u8 *mac)
{
 bool macaddr_changed = 0;
 struct net_device *netdev;
 struct lio *lio;

 rtnl_lock();

 netdev = oct->props[0].netdev;
 lio = GET_LIO(netdev);

 lio->linfo.macaddr_is_admin_asgnd = 1;

 if (!ether_addr_equal(netdev->dev_addr, mac)) {
  macaddr_changed = 1;
  ether_addr_copy(netdev->dev_addr, mac);
  ether_addr_copy(((u8 *)&lio->linfo.hw_addr) + 2, mac);
  call_netdevice_notifiers(NETDEV_CHANGEADDR, netdev);
 }

 rtnl_unlock();

 if (macaddr_changed)
  dev_info(&oct->pci_dev->dev,
    "PF changed VF's MAC address to %pM\n", mac);




}
