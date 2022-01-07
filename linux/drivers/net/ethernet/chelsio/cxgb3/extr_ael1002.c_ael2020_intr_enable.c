
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {int adapter; } ;







 int get_link_status_r (struct cphy*,int*,int *,int *,int *) ;
 int phy2portid (struct cphy*) ;
 int set_phy_regs (struct cphy*,struct reg_val const*) ;
 int t3_link_changed (int ,int ) ;
 int t3_phy_lasi_intr_enable (struct cphy*) ;

__attribute__((used)) static int ael2020_intr_enable(struct cphy *phy)
{
 static const struct reg_val regs[] = {

  { 128, 132 +130,
   0xffff, 0x4 },
  { 128, 131,
   0xffff, 0x8 << (130*4) },


  { 128, 131,
   0xffff, 0x2 << (129*4) },


  { 0, 0, 0, 0 }
 };
 int err, link_ok = 0;


 err = set_phy_regs(phy, regs);
 if (err)
  return err;

 err = get_link_status_r(phy, &link_ok, ((void*)0), ((void*)0), ((void*)0));
 if (err)
  return err;
 if (link_ok)
  t3_link_changed(phy->adapter,
    phy2portid(phy));

 err = t3_phy_lasi_intr_enable(phy);
 if (err)
  return err;

 return 0;
}
