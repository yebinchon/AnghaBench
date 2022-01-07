
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 scalar_t__ TLAN_AREG_0 ;
 int tlan_dio_write8 (int ,scalar_t__,char) ;

__attribute__((used)) static void tlan_set_mac(struct net_device *dev, int areg, char *mac)
{
 int i;

 areg *= 6;

 if (mac != ((void*)0)) {
  for (i = 0; i < 6; i++)
   tlan_dio_write8(dev->base_addr,
     TLAN_AREG_0 + areg + i, mac[i]);
 } else {
  for (i = 0; i < 6; i++)
   tlan_dio_write8(dev->base_addr,
     TLAN_AREG_0 + areg + i, 0);
 }

}
