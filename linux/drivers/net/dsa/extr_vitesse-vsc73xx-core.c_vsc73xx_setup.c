
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx {int dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 scalar_t__ IS_739X (struct vsc73xx*) ;
 int VSC73XX_BLOCK_ANALYZER ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_BLOCK_MEMINIT ;
 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_GLORESET ;
 int VSC73XX_GLORESET_MASTER_RESET ;
 int VSC73XX_GLORESET_PHY_RESET ;
 int VSC73XX_GMIIDELAY ;
 int VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS ;
 int VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS ;
 int VSC73XX_IFLODMSK ;
 int VSC73XX_MACACCESS ;
 int VSC73XX_MACACCESS_CMD_CLEAR_TABLE ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_RESET ;
 int VSC73XX_Q_MISC_CONF ;
 int VSC73XX_Q_MISC_CONF_EXTENT_MEM ;
 int VSC73XX_RECVMASK ;
 int VSC73XX_VLANACCESS ;
 int VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE ;
 int dev_info (int ,char*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;
 int vsc73xx_write (struct vsc73xx*,int ,int,int ,int) ;

__attribute__((used)) static int vsc73xx_setup(struct dsa_switch *ds)
{
 struct vsc73xx *vsc = ds->priv;
 int i;

 dev_info(vsc->dev, "set up the switch\n");


 vsc73xx_write(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GLORESET,
        VSC73XX_GLORESET_MASTER_RESET);
 usleep_range(125, 200);
 for (i = 0; i <= 15; i++) {
  if (i != 6 && i != 7) {
   vsc73xx_write(vsc, VSC73XX_BLOCK_MEMINIT,
          2,
          0, 0x1010400 + i);
   mdelay(1);
  }
 }
 mdelay(30);


 vsc73xx_write(vsc, VSC73XX_BLOCK_ANALYZER, 0,
        VSC73XX_MACACCESS,
        VSC73XX_MACACCESS_CMD_CLEAR_TABLE);


 vsc73xx_write(vsc, VSC73XX_BLOCK_ANALYZER, 0,
        VSC73XX_VLANACCESS,
        VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE);

 msleep(40);






 if (IS_739X(vsc))
  vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, 0x1f,
         VSC73XX_Q_MISC_CONF,
         VSC73XX_Q_MISC_CONF_EXTENT_MEM);


 for (i = 0; i < 7; i++) {
  if (i == 5)
   continue;
  vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, 4,
         VSC73XX_MAC_CFG, VSC73XX_MAC_CFG_RESET);
 }


 vsc73xx_write(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GMIIDELAY,
        VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS |
        VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS);

 vsc73xx_write(vsc, VSC73XX_BLOCK_ANALYZER, 0, VSC73XX_RECVMASK,
        0x5f);

 vsc73xx_write(vsc, VSC73XX_BLOCK_ANALYZER, 0, VSC73XX_IFLODMSK,
        0xff);

 mdelay(50);


 vsc73xx_write(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GLORESET,
        VSC73XX_GLORESET_PHY_RESET);

 udelay(4);

 return 0;
}
