
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int sis190_init_rxfilter (struct net_device*) ;

__attribute__((used)) static int sis190_mac_addr(struct net_device *dev, void *p)
{
 int rc;

 rc = eth_mac_addr(dev, p);
 if (!rc)
  sis190_init_rxfilter(dev);
 return rc;
}
