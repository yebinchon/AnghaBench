
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cas {int lstate; int link_fcntl; int timer_ticks; int cas_flags; void* link_transition; int dev; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int CAS_BMCR_SPEED1000 ;
 int CAS_FLAG_1000MB_CAP ;
 void* LINK_TRANSITION_LINK_CONFIG ;
 int MII_BMCR ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_phy_write (struct cas*,int ,int) ;
 int link ;

 int link_force_ok ;


 int netif_info (struct cas*,int ,int ,char*) ;

__attribute__((used)) static inline int cas_mdio_link_not_up(struct cas *cp)
{
 u16 val;

 switch (cp->lstate) {
 case 129:
  netif_info(cp, link, cp->dev, "Autoneg failed again, keeping forced mode\n");
  cas_phy_write(cp, MII_BMCR, cp->link_fcntl);
  cp->timer_ticks = 5;
  cp->lstate = link_force_ok;
  cp->link_transition = LINK_TRANSITION_LINK_CONFIG;
  break;

 case 130:
  val = cas_phy_read(cp, MII_BMCR);




  val &= ~(BMCR_ANRESTART | BMCR_ANENABLE);
  val |= BMCR_FULLDPLX;
  val |= (cp->cas_flags & CAS_FLAG_1000MB_CAP) ?
   CAS_BMCR_SPEED1000 : BMCR_SPEED100;
  cas_phy_write(cp, MII_BMCR, val);
  cp->timer_ticks = 5;
  cp->lstate = 128;
  cp->link_transition = LINK_TRANSITION_LINK_CONFIG;
  break;

 case 128:

  val = cas_phy_read(cp, MII_BMCR);
  cp->timer_ticks = 5;
  if (val & CAS_BMCR_SPEED1000) {
   val &= ~CAS_BMCR_SPEED1000;
   val |= (BMCR_SPEED100 | BMCR_FULLDPLX);
   cas_phy_write(cp, MII_BMCR, val);
   break;
  }

  if (val & BMCR_SPEED100) {
   if (val & BMCR_FULLDPLX)
    val &= ~BMCR_FULLDPLX;
   else {
    val &= ~BMCR_SPEED100;
   }
   cas_phy_write(cp, MII_BMCR, val);
   break;
  }
 default:
  break;
 }
 return 0;
}
