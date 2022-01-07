
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int interface; } ;






 int RTL8211F_TX_DELAY ;
 int phy_modify_paged (struct phy_device*,int,int,int ,int ) ;

__attribute__((used)) static int rtl8211f_config_init(struct phy_device *phydev)
{
 u16 val;




 switch (phydev->interface) {
 case 131:
 case 129:
  val = 0;
  break;
 case 130:
 case 128:
  val = RTL8211F_TX_DELAY;
  break;
 default:
  return 0;
 }

 return phy_modify_paged(phydev, 0xd08, 0x11, RTL8211F_TX_DELAY, val);
}
