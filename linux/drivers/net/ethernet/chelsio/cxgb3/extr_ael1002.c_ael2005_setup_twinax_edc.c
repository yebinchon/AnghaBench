
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {scalar_t__ priv; int * phy_cache; } ;


 int EDC_TWX_AEL2005 ;
 int EDC_TWX_AEL2005_SIZE ;

 scalar_t__ edc_twinax ;
 int msleep (int) ;
 int phy_modtype_twinax_long ;
 int set_phy_regs (struct cphy*,struct reg_val const*) ;
 int t3_get_edc_fw (struct cphy*,int ,int) ;
 int t3_mdio_write (struct cphy*,int const,int ,int ) ;

__attribute__((used)) static int ael2005_setup_twinax_edc(struct cphy *phy, int modtype)
{
 static const struct reg_val regs[] = {
  { 128, 0xc04a, 0xffff, 0x5a00 },
  { 0, 0, 0, 0 }
 };
 static const struct reg_val preemphasis[] = {
  { 128, 0xc014, 0xffff, 0xfe16 },
  { 128, 0xc015, 0xffff, 0xa000 },
  { 0, 0, 0, 0 }
 };
 int i, err;

 err = set_phy_regs(phy, regs);
 if (!err && modtype == phy_modtype_twinax_long)
  err = set_phy_regs(phy, preemphasis);
 if (err)
  return err;

 msleep(50);

 if (phy->priv != edc_twinax)
  err = t3_get_edc_fw(phy, EDC_TWX_AEL2005,
        EDC_TWX_AEL2005_SIZE);
 if (err)
  return err;

 for (i = 0; i < EDC_TWX_AEL2005_SIZE / sizeof(u16) && !err; i += 2)
  err = t3_mdio_write(phy, 128,
        phy->phy_cache[i],
        phy->phy_cache[i + 1]);
 if (!err)
  phy->priv = edc_twinax;
 return err;
}
