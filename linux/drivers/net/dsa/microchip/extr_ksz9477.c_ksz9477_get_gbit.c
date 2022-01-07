
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int features; } ;


 int NEW_XMII ;
 int PORT_MII_1000MBIT_S1 ;
 int PORT_MII_NOT_1GBIT ;

__attribute__((used)) static bool ksz9477_get_gbit(struct ksz_device *dev, u8 data)
{
 bool gbit;

 if (dev->features & NEW_XMII)
  gbit = !(data & PORT_MII_NOT_1GBIT);
 else
  gbit = !!(data & PORT_MII_1000MBIT_S1);
 return gbit;
}
