
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 scalar_t__ PP_IA ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int*,int ,int) ;
 int netdev_info (struct net_device*,char*,int*) ;
 int writereg (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static int set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *saddr = addr;
 int i;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, saddr->sa_data, ETH_ALEN);
 netdev_info(dev, "Setting MAC address to %pM\n", dev->dev_addr);


 for (i=0; i < ETH_ALEN/2; i++)
  writereg(dev, PP_IA+i*2, dev->dev_addr[i*2] | (dev->dev_addr[i*2+1] << 8));

 return 0;
}
