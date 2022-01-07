
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_7101_RESET ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int msleep (int) ;

void bnx2x_sfx7101_sp_sw_reset(struct bnx2x *bp, struct bnx2x_phy *phy)
{
 u16 val, cnt;

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_7101_RESET, &val);

 for (cnt = 0; cnt < 10; cnt++) {
  msleep(50);

  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_7101_RESET,
     (val | (1<<15)));

  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_7101_RESET, &val);

  if ((val & (1<<15)) == 0)
   break;
 }
}
