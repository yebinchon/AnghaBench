
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ETIMEDOUT ;
 int MDIO_MMD_VEND1 ;
 int VEND1_GLOBAL_FW_ID ;
 int msleep (int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr107_wait_reset_complete(struct phy_device *phydev)
{
 int val, retries = 100;

 do {
  val = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_FW_ID);
  if (val < 0)
   return val;
  msleep(20);
 } while (!val && --retries);

 return val ? 0 : -ETIMEDOUT;
}
