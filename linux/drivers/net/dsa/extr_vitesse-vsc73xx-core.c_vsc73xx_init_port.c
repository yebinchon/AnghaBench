
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsc73xx {int* addr; } ;


 int CPU_PORT ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_CAT_DROP ;
 int VSC73XX_CAT_DROP_FWD_PAUSE_ENA ;
 int VSC73XX_C_RX0 ;
 int VSC73XX_FCCONF ;
 int VSC73XX_FCCONF_FLOW_CTRL_OBEY ;
 int VSC73XX_FCCONF_ZERO_PAUSE_EN ;
 int VSC73XX_FCMACHI ;
 int VSC73XX_FCMACLO ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_1000M_F_PHY ;
 int VSC73XX_MAC_CFG_1000M_F_RGMII ;
 int VSC73XX_MAC_CFG_RESET ;
 int VSC73XX_MAC_CFG_RX_EN ;
 int VSC73XX_MAC_CFG_TX_EN ;
 int VSC73XX_MAXLEN ;
 int VSC73XX_Q_MISC_CONF ;
 int VSC73XX_Q_MISC_CONF_EARLY_TX_512 ;
 int VSC73XX_Q_MISC_CONF_EXTENT_MEM ;
 int VSC73XX_Q_MISC_CONF_MAC_PAUSE_MODE ;
 int vsc73xx_write (struct vsc73xx*,int ,int,int ,int) ;

__attribute__((used)) static void vsc73xx_init_port(struct vsc73xx *vsc, int port)
{
 u32 val;


 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_MAC_CFG,
        VSC73XX_MAC_CFG_RESET);





 if (port == CPU_PORT)
  val = VSC73XX_MAC_CFG_1000M_F_RGMII;
 else
  val = VSC73XX_MAC_CFG_1000M_F_PHY;

 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_MAC_CFG,
        val |
        VSC73XX_MAC_CFG_TX_EN |
        VSC73XX_MAC_CFG_RX_EN);







 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_MAXLEN, 9600);





 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_FCCONF,
        VSC73XX_FCCONF_ZERO_PAUSE_EN |
        VSC73XX_FCCONF_FLOW_CTRL_OBEY);






 if (port == CPU_PORT)
  val = VSC73XX_Q_MISC_CONF_EARLY_TX_512;
 else
  val = VSC73XX_Q_MISC_CONF_MAC_PAUSE_MODE;
 val |= VSC73XX_Q_MISC_CONF_EXTENT_MEM;
 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_Q_MISC_CONF,
        val);


 val = (vsc->addr[5] << 16) | (vsc->addr[4] << 8) | (vsc->addr[3]);
 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_FCMACHI,
        val);
 val = (vsc->addr[2] << 16) | (vsc->addr[1] << 8) | (vsc->addr[0]);
 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_FCMACLO,
        val);




 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port,
        VSC73XX_CAT_DROP,
        VSC73XX_CAT_DROP_FWD_PAUSE_ENA);


 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC,
        port, VSC73XX_C_RX0, 0);
}
