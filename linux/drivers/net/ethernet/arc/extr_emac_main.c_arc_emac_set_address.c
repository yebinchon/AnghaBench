
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int arc_emac_set_address_internal (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int arc_emac_set_address(struct net_device *ndev, void *p)
{
 struct sockaddr *addr = p;

 if (netif_running(ndev))
  return -EBUSY;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(ndev->dev_addr, addr->sa_data, ndev->addr_len);

 arc_emac_set_address_internal(ndev);

 return 0;
}
