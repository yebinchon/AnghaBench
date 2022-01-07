
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ETIMEDOUT ;
 int msleep (int) ;
 int phy_aneg_done (struct phy_device*) ;

__attribute__((used)) static int phy_poll_aneg_done(struct phy_device *phydev)
{
 unsigned int retries = 100;
 int ret;

 do {
  msleep(100);
  ret = phy_aneg_done(phydev);
 } while (!ret && --retries);

 if (!ret)
  return -ETIMEDOUT;

 return ret < 0 ? ret : 0;
}
