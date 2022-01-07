
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int phy_set_clr_bits(struct phy_device *dev, int location,
     int set_mask, int clr_mask)
{
 int v, ret;

 v = phy_read(dev, location);
 if (v < 0)
  return v;

 v &= ~clr_mask;
 v |= set_mask;

 ret = phy_write(dev, location, v);
 if (ret < 0)
  return ret;

 return v;
}
