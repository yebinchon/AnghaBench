
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int dummy; } ;
struct phylink {int link_an_mode; } ;


 int EOPNOTSUPP ;



 int phylink_get_fixed_state (struct phylink*,struct phylink_link_state*) ;
 int phylink_get_mac_state (struct phylink*,struct phylink_link_state*) ;
 int phylink_mii_emul_read (unsigned int,struct phylink_link_state*) ;

__attribute__((used)) static int phylink_mii_read(struct phylink *pl, unsigned int phy_id,
       unsigned int reg)
{
 struct phylink_link_state state;
 int val = 0xffff;

 switch (pl->link_an_mode) {
 case 130:
  if (phy_id == 0) {
   phylink_get_fixed_state(pl, &state);
   val = phylink_mii_emul_read(reg, &state);
  }
  break;

 case 128:
  return -EOPNOTSUPP;

 case 129:
  if (phy_id == 0) {
   val = phylink_get_mac_state(pl, &state);
   if (val < 0)
    return val;

   val = phylink_mii_emul_read(reg, &state);
  }
  break;
 }

 return val & 0xffff;
}
