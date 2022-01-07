
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
typedef int s32 ;


 int EBUSY ;
 int eth_mac_addr (struct net_device*,void*) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int nps_enet_set_hw_mac_address (struct net_device*) ;

__attribute__((used)) static s32 nps_enet_set_mac_address(struct net_device *ndev, void *p)
{
 struct sockaddr *addr = p;
 s32 res;

 if (netif_running(ndev))
  return -EBUSY;

 res = eth_mac_addr(ndev, p);
 if (!res) {
  ether_addr_copy(ndev->dev_addr, addr->sa_data);
  nps_enet_set_hw_mac_address(ndev);
 }

 return res;
}
