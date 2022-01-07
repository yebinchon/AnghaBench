
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int temac_do_set_mac_address (struct net_device*) ;

__attribute__((used)) static int temac_set_mac_address(struct net_device *ndev, void *p)
{
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(ndev->dev_addr, addr->sa_data, ETH_ALEN);
 temac_do_set_mac_address(ndev);
 return 0;
}
