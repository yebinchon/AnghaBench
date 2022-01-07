
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsc73xx {int dev; } ;
struct phy_device {scalar_t__ speed; scalar_t__ interface; scalar_t__ duplex; int link; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int BIT (int) ;
 int CPU_PORT ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int VSC73XX_ADVPORTM ;
 int VSC73XX_ADVPORTM_DDR_MODE ;
 int VSC73XX_ADVPORTM_ENA_GTX ;
 int VSC73XX_ADVPORTM_EXT_PORT ;
 int VSC73XX_ARBDISC ;
 int VSC73XX_ARBEMPTY ;
 int VSC73XX_BLOCK_ANALYZER ;
 int VSC73XX_BLOCK_ARBITER ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_1000M_F_PHY ;
 int VSC73XX_MAC_CFG_1000M_F_RGMII ;
 int VSC73XX_MAC_CFG_100_10M_F_PHY ;
 int VSC73XX_MAC_CFG_100_10M_H_PHY ;
 int VSC73XX_MAC_CFG_RESET ;
 int VSC73XX_MAC_CFG_RX_EN ;
 int VSC73XX_RECVMASK ;
 int VSC73XX_SBACKWDROP ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int vsc73xx_adjust_enable_port (struct vsc73xx*,int,struct phy_device*,int) ;
 int vsc73xx_init_port (struct vsc73xx*,int) ;
 int vsc73xx_read (struct vsc73xx*,int ,int ,int ,int*) ;
 int vsc73xx_update_bits (struct vsc73xx*,int ,int,int ,int,int) ;
 int vsc73xx_write (struct vsc73xx*,int ,int,int ,int) ;

__attribute__((used)) static void vsc73xx_adjust_link(struct dsa_switch *ds, int port,
    struct phy_device *phydev)
{
 struct vsc73xx *vsc = ds->priv;
 u32 val;


 if (port == CPU_PORT) {

  vsc73xx_init_port(vsc, CPU_PORT);




  vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
         CPU_PORT,
         VSC73XX_ADVPORTM,
         VSC73XX_ADVPORTM_EXT_PORT |
         VSC73XX_ADVPORTM_ENA_GTX |
         VSC73XX_ADVPORTM_DDR_MODE);
 }




 if (!phydev->link) {
  int maxloop = 10;

  dev_dbg(vsc->dev, "port %d: went down\n",
   port);


  vsc73xx_update_bits(vsc, VSC73XX_BLOCK_MAC, port,
        VSC73XX_MAC_CFG,
        VSC73XX_MAC_CFG_RX_EN, 0);


  vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ARBITER, 0,
        VSC73XX_ARBDISC, BIT(port), BIT(port));


  vsc73xx_read(vsc, VSC73XX_BLOCK_ARBITER, 0,
        VSC73XX_ARBEMPTY, &val);
  while (!(val & BIT(port))) {
   msleep(1);
   vsc73xx_read(vsc, VSC73XX_BLOCK_ARBITER, 0,
         VSC73XX_ARBEMPTY, &val);
   if (--maxloop == 0) {
    dev_err(vsc->dev,
     "timeout waiting for block arbiter\n");

    break;
   }
  }


  vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, port, VSC73XX_MAC_CFG,
         VSC73XX_MAC_CFG_RESET);


  vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ARBITER, 0,
        VSC73XX_ARBDISC, BIT(port), 0);


  vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ARBITER, 0,
        VSC73XX_SBACKWDROP, BIT(port), BIT(port));


  vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ANALYZER, 0,
        VSC73XX_RECVMASK, BIT(port), 0);

  return;
 }


 if (phydev->speed == SPEED_1000) {
  dev_dbg(vsc->dev, "port %d: 1000 Mbit mode full duplex\n",
   port);


  if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
   val = VSC73XX_MAC_CFG_1000M_F_RGMII;
  else
   val = VSC73XX_MAC_CFG_1000M_F_PHY;
  vsc73xx_adjust_enable_port(vsc, port, phydev, val);
 } else if (phydev->speed == SPEED_100) {
  if (phydev->duplex == DUPLEX_FULL) {
   val = VSC73XX_MAC_CFG_100_10M_F_PHY;
   dev_dbg(vsc->dev,
    "port %d: 100 Mbit full duplex mode\n",
    port);
  } else {
   val = VSC73XX_MAC_CFG_100_10M_H_PHY;
   dev_dbg(vsc->dev,
    "port %d: 100 Mbit half duplex mode\n",
    port);
  }
  vsc73xx_adjust_enable_port(vsc, port, phydev, val);
 } else if (phydev->speed == SPEED_10) {
  if (phydev->duplex == DUPLEX_FULL) {
   val = VSC73XX_MAC_CFG_100_10M_F_PHY;
   dev_dbg(vsc->dev,
    "port %d: 10 Mbit full duplex mode\n",
    port);
  } else {
   val = VSC73XX_MAC_CFG_100_10M_H_PHY;
   dev_dbg(vsc->dev,
    "port %d: 10 Mbit half duplex mode\n",
    port);
  }
  vsc73xx_adjust_enable_port(vsc, port, phydev, val);
 } else {
  dev_err(vsc->dev,
   "could not adjust link: unknown speed\n");
 }


 vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ANALYZER, 0,
       VSC73XX_RECVMASK, BIT(port), BIT(port));
}
