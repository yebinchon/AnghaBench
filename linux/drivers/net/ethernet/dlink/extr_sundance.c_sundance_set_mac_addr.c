
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int __set_mac_addr (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int sundance_set_mac_addr(struct net_device *dev, void *data)
{
 const struct sockaddr *addr = data;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);
 __set_mac_addr(dev);

 return 0;
}
