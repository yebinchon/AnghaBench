
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int interface; } ;


 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int EINVAL ;
 int MII_BMCR ;
 int MII_DM9161_10BTCSR ;
 int MII_DM9161_10BTCSR_INIT ;
 int MII_DM9161_SCR ;
 int MII_DM9161_SCR_INIT ;
 int MII_DM9161_SCR_RMII ;


 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int dm9161_config_init(struct phy_device *phydev)
{
 int err, temp;


 err = phy_write(phydev, MII_BMCR, BMCR_ISOLATE);

 if (err < 0)
  return err;

 switch (phydev->interface) {
 case 129:
  temp = MII_DM9161_SCR_INIT;
  break;
 case 128:
  temp = MII_DM9161_SCR_INIT | MII_DM9161_SCR_RMII;
  break;
 default:
  return -EINVAL;
 }


 err = phy_write(phydev, MII_DM9161_SCR, temp);
 if (err < 0)
  return err;


 err = phy_write(phydev, MII_DM9161_10BTCSR, MII_DM9161_10BTCSR_INIT);

 if (err < 0)
  return err;


 return phy_write(phydev, MII_BMCR, BMCR_ANENABLE);
}
