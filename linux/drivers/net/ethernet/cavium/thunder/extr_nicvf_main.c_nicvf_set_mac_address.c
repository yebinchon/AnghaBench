
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct nicvf {int set_mac_pending; TYPE_1__* pdev; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 scalar_t__ nicvf_hw_set_mac_addr (struct nicvf*,struct net_device*) ;

__attribute__((used)) static int nicvf_set_mac_address(struct net_device *netdev, void *p)
{
 struct sockaddr *addr = p;
 struct nicvf *nic = netdev_priv(netdev);

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 if (nic->pdev->msix_enabled) {
  if (nicvf_hw_set_mac_addr(nic, netdev))
   return -EBUSY;
 } else {
  nic->set_mac_pending = 1;
 }

 return 0;
}
