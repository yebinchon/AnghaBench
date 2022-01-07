
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vsc73xx {int dummy; } ;
struct phy_device {int dummy; } ;


 int BIT (int) ;
 int VSC73XX_BLOCK_ARBITER ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_FCCONF ;
 int VSC73XX_FCCONF_FLOW_CTRL_OBEY ;
 int VSC73XX_FCCONF_ZERO_PAUSE_EN ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_RESET ;
 int VSC73XX_MAC_CFG_RX_EN ;
 int VSC73XX_MAC_CFG_SEED_LOAD ;
 int VSC73XX_MAC_CFG_SEED_OFFSET ;
 int VSC73XX_MAC_CFG_TX_EN ;
 int VSC73XX_MAC_CFG_WEXC_DIS ;
 int VSC73XX_SBACKWDROP ;
 int get_random_bytes (int*,int) ;
 int vsc73xx_update_bits (struct vsc73xx*,int ,int,int ,int,int) ;
 int vsc73xx_write (struct vsc73xx*,int ,int,int ,int) ;

__attribute__((used)) static void vsc73xx_adjust_enable_port(struct vsc73xx *vsc,
           int port, struct phy_device *phydev,
           u32 initval)
{
 u32 val = initval;
 u8 seed;


 val |= VSC73XX_MAC_CFG_RESET;
 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, port, VSC73XX_MAC_CFG, val);


 get_random_bytes(&seed, 1);
 val |= seed << VSC73XX_MAC_CFG_SEED_OFFSET;
 val |= VSC73XX_MAC_CFG_SEED_LOAD;
 val |= VSC73XX_MAC_CFG_WEXC_DIS;
 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, port, VSC73XX_MAC_CFG, val);






 vsc73xx_write(vsc, VSC73XX_BLOCK_MAC, port, VSC73XX_FCCONF,
        VSC73XX_FCCONF_ZERO_PAUSE_EN |
        VSC73XX_FCCONF_FLOW_CTRL_OBEY |
        0xff);


 vsc73xx_update_bits(vsc, VSC73XX_BLOCK_ARBITER, 0,
       VSC73XX_SBACKWDROP, BIT(port), 0);


 vsc73xx_update_bits(vsc, VSC73XX_BLOCK_MAC, port,
       VSC73XX_MAC_CFG,
       VSC73XX_MAC_CFG_RESET | VSC73XX_MAC_CFG_SEED_LOAD |
       VSC73XX_MAC_CFG_TX_EN | VSC73XX_MAC_CFG_RX_EN,
       VSC73XX_MAC_CFG_TX_EN | VSC73XX_MAC_CFG_RX_EN);
}
