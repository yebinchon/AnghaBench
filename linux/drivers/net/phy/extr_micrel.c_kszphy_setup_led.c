
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int EINVAL ;


 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;
 int phydev_err (struct phy_device*,char*) ;

__attribute__((used)) static int kszphy_setup_led(struct phy_device *phydev, u32 reg, int val)
{
 int rc, temp, shift;

 switch (reg) {
 case 129:
  shift = 14;
  break;
 case 128:
  shift = 4;
  break;
 default:
  return -EINVAL;
 }

 temp = phy_read(phydev, reg);
 if (temp < 0) {
  rc = temp;
  goto out;
 }

 temp &= ~(3 << shift);
 temp |= val << shift;
 rc = phy_write(phydev, reg, temp);
out:
 if (rc < 0)
  phydev_err(phydev, "failed to set led mode\n");

 return rc;
}
