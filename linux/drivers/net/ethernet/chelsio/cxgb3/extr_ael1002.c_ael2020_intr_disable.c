
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_2; int member_3; int const member_1; int const member_0; } ;
struct cphy {int dummy; } ;






 int set_phy_regs (struct cphy*,struct reg_val const*) ;
 int t3_phy_lasi_intr_disable (struct cphy*) ;

__attribute__((used)) static int ael2020_intr_disable(struct cphy *phy)
{
 static const struct reg_val regs[] = {

  { 128, 131,
   0xffff, 0xb << (130*4) },


  { 128, 131,
   0xffff, 0x1 << (129*4) },


  { 0, 0, 0, 0 }
 };
 int err;


 err = set_phy_regs(phy, regs);
 if (err)
  return err;

 return t3_phy_lasi_intr_disable(phy);
}
