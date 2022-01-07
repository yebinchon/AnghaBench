
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_CIS8201_AUXCONSTAT_INIT ;
 int MII_CIS8201_AUX_CONSTAT ;
 int MII_CIS8201_EXTCON1_INIT ;
 int MII_CIS8201_EXT_CON1 ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int cis820x_config_init(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_CIS8201_AUX_CONSTAT,
   MII_CIS8201_AUXCONSTAT_INIT);

 if (err < 0)
  return err;

 err = phy_write(phydev, MII_CIS8201_EXT_CON1,
   MII_CIS8201_EXTCON1_INIT);

 return err;
}
