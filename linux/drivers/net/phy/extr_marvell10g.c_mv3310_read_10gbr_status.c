
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int SPEED_10000 ;
 int mv3310_update_interface (struct phy_device*) ;

__attribute__((used)) static int mv3310_read_10gbr_status(struct phy_device *phydev)
{
 phydev->link = 1;
 phydev->speed = SPEED_10000;
 phydev->duplex = DUPLEX_FULL;

 mv3310_update_interface(phydev);

 return 0;
}
