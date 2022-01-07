
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ave_macaddr_init (struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;

__attribute__((used)) static int ave_set_mac_address(struct net_device *ndev, void *p)
{
 int ret = eth_mac_addr(ndev, p);

 if (ret)
  return ret;

 ave_macaddr_init(ndev);

 return 0;
}
