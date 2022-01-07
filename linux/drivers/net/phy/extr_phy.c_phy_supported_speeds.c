
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 unsigned int phy_speeds (unsigned int*,unsigned int,int ) ;

unsigned int phy_supported_speeds(struct phy_device *phy,
      unsigned int *speeds,
      unsigned int size)
{
 return phy_speeds(speeds, size, phy->supported);
}
