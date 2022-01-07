
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int gmac_write_mac_address (struct net_device*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int gmac_set_mac_address(struct net_device *netdev, void *addr)
{
 struct sockaddr *sa = addr;

 memcpy(netdev->dev_addr, sa->sa_data, ETH_ALEN);
 gmac_write_mac_address(netdev);

 return 0;
}
