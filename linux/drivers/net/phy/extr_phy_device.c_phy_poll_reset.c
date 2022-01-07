
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int ETIMEDOUT ;
 int MII_BMCR ;
 int msleep (int) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int phy_poll_reset(struct phy_device *phydev)
{

 unsigned int retries = 12;
 int ret;

 do {
  msleep(50);
  ret = phy_read(phydev, MII_BMCR);
  if (ret < 0)
   return ret;
 } while (ret & BMCR_RESET && --retries);
 if (ret & BMCR_RESET)
  return -ETIMEDOUT;




 msleep(1);
 return 0;
}
