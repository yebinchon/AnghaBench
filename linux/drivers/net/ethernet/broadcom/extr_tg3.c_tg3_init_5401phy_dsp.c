
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int MII_TG3_AUXCTL_SHDWSEL_AUXCTL ;
 int tg3_phy_auxctl_write (struct tg3*,int ,int) ;
 int tg3_phydsp_write (struct tg3*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_init_5401phy_dsp(struct tg3 *tp)
{
 int err;



 err = tg3_phy_auxctl_write(tp, MII_TG3_AUXCTL_SHDWSEL_AUXCTL, 0x4c20);

 err |= tg3_phydsp_write(tp, 0x0012, 0x1804);
 err |= tg3_phydsp_write(tp, 0x0013, 0x1204);
 err |= tg3_phydsp_write(tp, 0x8006, 0x0132);
 err |= tg3_phydsp_write(tp, 0x8006, 0x0232);
 err |= tg3_phydsp_write(tp, 0x201f, 0x0a20);

 udelay(40);

 return err;
}
