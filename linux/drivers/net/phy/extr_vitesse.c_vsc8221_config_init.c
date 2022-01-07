
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_VSC8221_AUXCONSTAT_INIT ;
 int MII_VSC8244_AUX_CONSTAT ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int vsc8221_config_init(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_VSC8244_AUX_CONSTAT,
   MII_VSC8221_AUXCONSTAT_INIT);
 return err;




}
