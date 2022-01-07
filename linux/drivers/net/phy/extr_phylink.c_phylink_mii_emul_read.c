
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int pause; int an_complete; int duplex; int speed; int link; } ;
struct fixed_phy_status {int pause; int asym_pause; int duplex; int speed; int link; } ;


 int BMSR_ANEGCOMPLETE ;
 unsigned int MII_BMSR ;
 int MLO_PAUSE_ASYM ;
 int MLO_PAUSE_SYM ;
 int swphy_read_reg (unsigned int,struct fixed_phy_status*) ;

__attribute__((used)) static int phylink_mii_emul_read(unsigned int reg,
     struct phylink_link_state *state)
{
 struct fixed_phy_status fs;
 int val;

 fs.link = state->link;
 fs.speed = state->speed;
 fs.duplex = state->duplex;
 fs.pause = state->pause & MLO_PAUSE_SYM;
 fs.asym_pause = state->pause & MLO_PAUSE_ASYM;

 val = swphy_read_reg(reg, &fs);
 if (reg == MII_BMSR) {
  if (!state->an_complete)
   val &= ~BMSR_ANEGCOMPLETE;
 }
 return val;
}
