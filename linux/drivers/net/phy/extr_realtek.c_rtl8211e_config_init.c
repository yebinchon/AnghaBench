
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int interface; } ;






 int RTL8211E_RX_DELAY ;
 int RTL8211E_TX_DELAY ;
 int RTL821x_EXT_PAGE_SELECT ;
 int __phy_modify (struct phy_device*,int,int,int) ;
 int __phy_write (struct phy_device*,int ,int) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int) ;

__attribute__((used)) static int rtl8211e_config_init(struct phy_device *phydev)
{
 int ret = 0, oldpage;
 u16 val;


 switch (phydev->interface) {
 case 131:
  val = 0;
  break;
 case 130:
  val = RTL8211E_TX_DELAY | RTL8211E_RX_DELAY;
  break;
 case 129:
  val = RTL8211E_RX_DELAY;
  break;
 case 128:
  val = RTL8211E_TX_DELAY;
  break;
 default:
  return 0;
 }
 oldpage = phy_select_page(phydev, 0x7);
 if (oldpage < 0)
  goto err_restore_page;

 ret = __phy_write(phydev, RTL821x_EXT_PAGE_SELECT, 0xa4);
 if (ret)
  goto err_restore_page;

 ret = __phy_modify(phydev, 0x1c, RTL8211E_TX_DELAY | RTL8211E_RX_DELAY,
      val);

err_restore_page:
 return phy_restore_page(phydev, oldpage, ret);
}
