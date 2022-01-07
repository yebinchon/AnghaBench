
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8073_CHIP_REV ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;

__attribute__((used)) static int bnx2x_8073_is_snr_needed(struct bnx2x *bp, struct bnx2x_phy *phy)
{

 u16 val;


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_CHIP_REV, &val);

 if (val != 1) {

  return 0;
 }

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2, &val);


 if (val != 0x102)
  return 0;

 return 1;
}
