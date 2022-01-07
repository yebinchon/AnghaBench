
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int brcm_phy_setbits(struct phy_device *phydev, int reg, int set)
{
 int val;

 val = phy_read(phydev, reg);
 if (val < 0)
  return val;

 return phy_write(phydev, reg, val | set);
}
