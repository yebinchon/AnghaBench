
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int BMCR_FULLDPLX ;
 int BMCR_SPEED1000 ;
 int CTL1000_AS_MASTER ;
 int CTL1000_ENABLE_MASTER ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int MII_TG3_DSP_ADDRESS ;
 int MII_TG3_DSP_CONTROL ;
 int MII_TG3_EXT_CTRL ;
 int tg3_bmcr_reset (struct tg3*) ;
 int tg3_phy_reset_chanpat (struct tg3*) ;
 int tg3_phy_toggle_auxctl_smdsp (struct tg3*,int) ;
 int tg3_phy_write_and_check_testpat (struct tg3*,int*) ;
 int tg3_phydsp_write (struct tg3*,int,int) ;
 int tg3_readphy (struct tg3*,int ,int*) ;
 int tg3_writephy (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_reset_5703_4_5(struct tg3 *tp)
{
 u32 reg32, phy9_orig;
 int retries, do_phy_reset, err;

 retries = 10;
 do_phy_reset = 1;
 do {
  if (do_phy_reset) {
   err = tg3_bmcr_reset(tp);
   if (err)
    return err;
   do_phy_reset = 0;
  }


  if (tg3_readphy(tp, MII_TG3_EXT_CTRL, &reg32))
   continue;

  reg32 |= 0x3000;
  tg3_writephy(tp, MII_TG3_EXT_CTRL, reg32);


  tg3_writephy(tp, MII_BMCR,
        BMCR_FULLDPLX | BMCR_SPEED1000);


  if (tg3_readphy(tp, MII_CTRL1000, &phy9_orig))
   continue;

  tg3_writephy(tp, MII_CTRL1000,
        CTL1000_AS_MASTER | CTL1000_ENABLE_MASTER);

  err = tg3_phy_toggle_auxctl_smdsp(tp, 1);
  if (err)
   return err;


  tg3_phydsp_write(tp, 0x8005, 0x0800);

  err = tg3_phy_write_and_check_testpat(tp, &do_phy_reset);
  if (!err)
   break;
 } while (--retries);

 err = tg3_phy_reset_chanpat(tp);
 if (err)
  return err;

 tg3_phydsp_write(tp, 0x8005, 0x0000);

 tg3_writephy(tp, MII_TG3_DSP_ADDRESS, 0x8200);
 tg3_writephy(tp, MII_TG3_DSP_CONTROL, 0x0000);

 tg3_phy_toggle_auxctl_smdsp(tp, 0);

 tg3_writephy(tp, MII_CTRL1000, phy9_orig);

 err = tg3_readphy(tp, MII_TG3_EXT_CTRL, &reg32);
 if (err)
  return err;

 reg32 &= ~0x3000;
 tg3_writephy(tp, MII_TG3_EXT_CTRL, reg32);

 return 0;
}
