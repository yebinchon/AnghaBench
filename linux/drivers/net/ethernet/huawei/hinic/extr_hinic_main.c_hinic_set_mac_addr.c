
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {unsigned char* sa_data; } ;
struct net_device {unsigned char* dev_addr; } ;


 int ETH_ALEN ;
 int change_mac_addr (struct net_device*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int hinic_set_mac_addr(struct net_device *netdev, void *addr)
{
 unsigned char new_mac[ETH_ALEN];
 struct sockaddr *saddr = addr;
 int err;

 memcpy(new_mac, saddr->sa_data, ETH_ALEN);

 err = change_mac_addr(netdev, new_mac);
 if (!err)
  memcpy(netdev->dev_addr, new_mac, ETH_ALEN);

 return err;
}
