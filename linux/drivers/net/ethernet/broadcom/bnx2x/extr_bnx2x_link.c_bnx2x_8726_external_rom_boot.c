
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_GEN_CTRL ;
 int MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET ;
 int MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP ;
 int MDIO_PMA_REG_MISC_CTRL1 ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_save_bcm_spirom_ver (struct bnx2x*,struct bnx2x_phy*,int ) ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_8726_external_rom_boot(struct bnx2x_phy *phy,
      struct link_params *params)
{
 struct bnx2x *bp = params->bp;

 msleep(100);


 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x018B);


 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL,
    MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_MISC_CTRL1, 0x0001);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL,
    MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP);


 msleep(150);


 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_MISC_CTRL1, 0x0000);

 msleep(200);
 bnx2x_save_bcm_spirom_ver(bp, phy, params->port);
}
