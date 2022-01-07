
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 scalar_t__ EDC_MODE_LIMITING ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_LRM_MODE ;
 int MDIO_PMA_REG_MISC_CTRL0 ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,scalar_t__*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static int bnx2x_8726_set_limiting_mode(struct bnx2x *bp,
     struct bnx2x_phy *phy,
     u16 edc_mode)
{
 u16 cur_limiting_mode;

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2,
   &cur_limiting_mode);
 DP(NETIF_MSG_LINK, "Current Limiting mode is 0x%x\n",
   cur_limiting_mode);

 if (edc_mode == EDC_MODE_LIMITING) {
  DP(NETIF_MSG_LINK, "Setting LIMITING MODE\n");
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_ROM_VER2,
     EDC_MODE_LIMITING);
 } else {

  DP(NETIF_MSG_LINK, "Setting LRM MODE\n");




  if (cur_limiting_mode != EDC_MODE_LIMITING)
   return 0;

  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_LRM_MODE,
     0);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_ROM_VER2,
     0x128);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_MISC_CTRL0,
     0x4008);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_LRM_MODE,
     0xaaaa);
 }
 return 0;
}
