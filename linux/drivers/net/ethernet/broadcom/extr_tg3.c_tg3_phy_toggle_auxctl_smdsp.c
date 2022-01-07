
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int MII_TG3_AUXCTL_ACTL_SMDSP_ENA ;
 int MII_TG3_AUXCTL_ACTL_TX_6DB ;
 int MII_TG3_AUXCTL_SHDWSEL_AUXCTL ;
 int tg3_phy_auxctl_read (struct tg3*,int ,int*) ;
 int tg3_phy_auxctl_write (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_toggle_auxctl_smdsp(struct tg3 *tp, bool enable)
{
 u32 val;
 int err;

 err = tg3_phy_auxctl_read(tp, MII_TG3_AUXCTL_SHDWSEL_AUXCTL, &val);

 if (err)
  return err;

 if (enable)
  val |= MII_TG3_AUXCTL_ACTL_SMDSP_ENA;
 else
  val &= ~MII_TG3_AUXCTL_ACTL_SMDSP_ENA;

 err = tg3_phy_auxctl_write((tp), MII_TG3_AUXCTL_SHDWSEL_AUXCTL,
       val | MII_TG3_AUXCTL_ACTL_TX_6DB);

 return err;
}
