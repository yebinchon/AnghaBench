
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_setting {int duplex; int speed; } ;
struct phy_device {int duplex; int speed; int supported; } ;


 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 struct phy_setting* phy_find_valid (int ,int ,int ) ;

__attribute__((used)) static void phy_sanitize_settings(struct phy_device *phydev)
{
 const struct phy_setting *setting;

 setting = phy_find_valid(phydev->speed, phydev->duplex,
     phydev->supported);
 if (setting) {
  phydev->speed = setting->speed;
  phydev->duplex = setting->duplex;
 } else {

  phydev->speed = SPEED_UNKNOWN;
  phydev->duplex = DUPLEX_UNKNOWN;
 }
}
