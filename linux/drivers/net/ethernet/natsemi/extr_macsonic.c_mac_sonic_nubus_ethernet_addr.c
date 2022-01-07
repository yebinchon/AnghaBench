
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;


 int MACSONIC_DAYNA ;
 int SONIC_READ_PROM (int) ;
 int bit_reverse_addr (int *) ;

__attribute__((used)) static int mac_sonic_nubus_ethernet_addr(struct net_device *dev,
      unsigned long prom_addr, int id)
{
 int i;
 for(i = 0; i < 6; i++)
  dev->dev_addr[i] = SONIC_READ_PROM(i);


 if (id != MACSONIC_DAYNA)
  bit_reverse_addr(dev->dev_addr);

 return 0;
}
