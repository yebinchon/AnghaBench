
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EADDRNOTAVAIL ;
 int do_s2io_prog_unicast (struct net_device*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int s2io_set_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);


 return do_s2io_prog_unicast(dev, dev->dev_addr);
}
