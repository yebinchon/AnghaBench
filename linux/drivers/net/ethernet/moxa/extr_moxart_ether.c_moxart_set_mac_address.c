
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int moxart_update_mac_address (struct net_device*) ;

__attribute__((used)) static int moxart_set_mac_address(struct net_device *ndev, void *addr)
{
 struct sockaddr *address = addr;

 if (!is_valid_ether_addr(address->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(ndev->dev_addr, address->sa_data, ndev->addr_len);
 moxart_update_mac_address(ndev);

 return 0;
}
