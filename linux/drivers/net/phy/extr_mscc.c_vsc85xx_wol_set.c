
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct phy_device {int lock; TYPE_1__* attached_dev; } ;
struct ethtool_wolinfo {int wolopts; int* sopass; } ;
struct TYPE_2__ {size_t* dev_addr; } ;


 size_t ARRAY_SIZE (int*) ;
 int MII_VSC85XX_INT_MASK ;
 int MII_VSC85XX_INT_MASK_WOL ;
 int MII_VSC85XX_INT_STATUS ;
 int MSCC_PHY_PAGE_EXTENDED_2 ;
 int MSCC_PHY_WOL_LOWER_MAC_ADDR ;
 int MSCC_PHY_WOL_LOWER_PASSWD ;
 int MSCC_PHY_WOL_MAC_CONTROL ;
 int MSCC_PHY_WOL_MID_MAC_ADDR ;
 int MSCC_PHY_WOL_MID_PASSWD ;
 int MSCC_PHY_WOL_UPPER_MAC_ADDR ;
 int MSCC_PHY_WOL_UPPER_PASSWD ;
 int SECURE_ON_ENABLE ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int __phy_read (struct phy_device*,int ) ;
 int __phy_write (struct phy_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc85xx_wol_set(struct phy_device *phydev,
      struct ethtool_wolinfo *wol)
{
 int rc;
 u16 reg_val;
 u8 i;
 u16 pwd[3] = {0, 0, 0};
 struct ethtool_wolinfo *wol_conf = wol;
 u8 *mac_addr = phydev->attached_dev->dev_addr;

 mutex_lock(&phydev->lock);
 rc = phy_select_page(phydev, MSCC_PHY_PAGE_EXTENDED_2);
 if (rc < 0) {
  rc = phy_restore_page(phydev, rc, rc);
  goto out_unlock;
 }

 if (wol->wolopts & WAKE_MAGIC) {

  for (i = 0; i < ARRAY_SIZE(pwd); i++)
   pwd[i] = mac_addr[5 - (i * 2 + 1)] << 8 |
     mac_addr[5 - i * 2];
  __phy_write(phydev, MSCC_PHY_WOL_LOWER_MAC_ADDR, pwd[0]);
  __phy_write(phydev, MSCC_PHY_WOL_MID_MAC_ADDR, pwd[1]);
  __phy_write(phydev, MSCC_PHY_WOL_UPPER_MAC_ADDR, pwd[2]);
 } else {
  __phy_write(phydev, MSCC_PHY_WOL_LOWER_MAC_ADDR, 0);
  __phy_write(phydev, MSCC_PHY_WOL_MID_MAC_ADDR, 0);
  __phy_write(phydev, MSCC_PHY_WOL_UPPER_MAC_ADDR, 0);
 }

 if (wol_conf->wolopts & WAKE_MAGICSECURE) {
  for (i = 0; i < ARRAY_SIZE(pwd); i++)
   pwd[i] = wol_conf->sopass[5 - (i * 2 + 1)] << 8 |
     wol_conf->sopass[5 - i * 2];
  __phy_write(phydev, MSCC_PHY_WOL_LOWER_PASSWD, pwd[0]);
  __phy_write(phydev, MSCC_PHY_WOL_MID_PASSWD, pwd[1]);
  __phy_write(phydev, MSCC_PHY_WOL_UPPER_PASSWD, pwd[2]);
 } else {
  __phy_write(phydev, MSCC_PHY_WOL_LOWER_PASSWD, 0);
  __phy_write(phydev, MSCC_PHY_WOL_MID_PASSWD, 0);
  __phy_write(phydev, MSCC_PHY_WOL_UPPER_PASSWD, 0);
 }

 reg_val = __phy_read(phydev, MSCC_PHY_WOL_MAC_CONTROL);
 if (wol_conf->wolopts & WAKE_MAGICSECURE)
  reg_val |= SECURE_ON_ENABLE;
 else
  reg_val &= ~SECURE_ON_ENABLE;
 __phy_write(phydev, MSCC_PHY_WOL_MAC_CONTROL, reg_val);

 rc = phy_restore_page(phydev, rc, rc > 0 ? 0 : rc);
 if (rc < 0)
  goto out_unlock;

 if (wol->wolopts & WAKE_MAGIC) {

  reg_val = phy_read(phydev, MII_VSC85XX_INT_MASK);
  reg_val |= MII_VSC85XX_INT_MASK_WOL;
  rc = phy_write(phydev, MII_VSC85XX_INT_MASK, reg_val);
  if (rc)
   goto out_unlock;
 } else {

  reg_val = phy_read(phydev, MII_VSC85XX_INT_MASK);
  reg_val &= (~MII_VSC85XX_INT_MASK_WOL);
  rc = phy_write(phydev, MII_VSC85XX_INT_MASK, reg_val);
  if (rc)
   goto out_unlock;
 }

 reg_val = phy_read(phydev, MII_VSC85XX_INT_STATUS);

out_unlock:
 mutex_unlock(&phydev->lock);

 return rc;
}
