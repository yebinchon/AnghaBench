
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct r8152 {scalar_t__ version; struct net_device* netdev; } ;
struct net_device {int dev_addr; } ;


 scalar_t__ RTL_VER_01 ;
 int determine_ethernet_addr (struct r8152*,struct sockaddr*) ;
 int ether_addr_copy (int ,int ) ;
 int rtl8152_set_mac_address (struct net_device*,struct sockaddr*) ;

__attribute__((used)) static int set_ethernet_addr(struct r8152 *tp)
{
 struct net_device *dev = tp->netdev;
 struct sockaddr sa;
 int ret;

 ret = determine_ethernet_addr(tp, &sa);
 if (ret < 0)
  return ret;

 if (tp->version == RTL_VER_01)
  ether_addr_copy(dev->dev_addr, sa.sa_data);
 else
  ret = rtl8152_set_mac_address(dev, &sa);

 return ret;
}
