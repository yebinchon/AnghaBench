
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int LAN88XX_EXT_PAGE_ACCESS_TR ;
 int LAN88XX_EXT_PAGE_TR_CR ;
 int LAN88XX_EXT_PAGE_TR_HIGH_DATA ;
 int LAN88XX_EXT_PAGE_TR_LOW_DATA ;
 int __phy_read (struct phy_device*,int ) ;
 int __phy_write (struct phy_device*,int ,int) ;
 int lan88xx_write_page (struct phy_device*,int ) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_save_page (struct phy_device*) ;
 int phydev_warn (struct phy_device*,char*,...) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan88xx_TR_reg_set(struct phy_device *phydev, u16 regaddr,
         u32 data)
{
 int val, save_page, ret = 0;
 u16 buf;


 save_page = phy_save_page(phydev);
 if (save_page < 0) {
  phydev_warn(phydev, "Failed to get current page\n");
  goto err;
 }


 lan88xx_write_page(phydev, LAN88XX_EXT_PAGE_ACCESS_TR);

 ret = __phy_write(phydev, LAN88XX_EXT_PAGE_TR_LOW_DATA,
     (data & 0xFFFF));
 if (ret < 0) {
  phydev_warn(phydev, "Failed to write TR low data\n");
  goto err;
 }

 ret = __phy_write(phydev, LAN88XX_EXT_PAGE_TR_HIGH_DATA,
     (data & 0x00FF0000) >> 16);
 if (ret < 0) {
  phydev_warn(phydev, "Failed to write TR high data\n");
  goto err;
 }


 buf = (regaddr & ~(0x3 << 13));
 buf |= 0x8000;

 ret = __phy_write(phydev, LAN88XX_EXT_PAGE_TR_CR, buf);
 if (ret < 0) {
  phydev_warn(phydev, "Failed to write data in reg\n");
  goto err;
 }

 usleep_range(1000, 2000);
 val = __phy_read(phydev, LAN88XX_EXT_PAGE_TR_CR);
 if (!(val & 0x8000))
  phydev_warn(phydev, "TR Register[0x%X] configuration failed\n",
       regaddr);
err:
 return phy_restore_page(phydev, save_page, ret);
}
