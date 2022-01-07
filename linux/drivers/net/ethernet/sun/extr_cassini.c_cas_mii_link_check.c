
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cas {scalar_t__ lstate; int link_cntl; int link_fcntl; int timer_ticks; int dev; scalar_t__ opened; int link_transition; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int const BMSR_LSTATUS ;
 int LINK_TRANSITION_LINK_CONFIG ;
 int LINK_TRANSITION_LINK_DOWN ;
 int LINK_TRANSITION_LINK_UP ;
 int MII_BMCR ;
 int cas_mdio_link_not_up (struct cas*) ;
 int cas_mif_poll (struct cas*,int) ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_phy_write (struct cas*,int ,int) ;
 int cas_set_link_modes (struct cas*) ;
 int link ;
 scalar_t__ link_down ;
 scalar_t__ link_force_ret ;
 scalar_t__ link_force_try ;
 scalar_t__ link_up ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_info (struct cas*,int ,int ,char*) ;

__attribute__((used)) static int cas_mii_link_check(struct cas *cp, const u16 bmsr)
{
 int restart;

 if (bmsr & BMSR_LSTATUS) {





  if ((cp->lstate == link_force_try) &&
      (cp->link_cntl & BMCR_ANENABLE)) {
   cp->lstate = link_force_ret;
   cp->link_transition = LINK_TRANSITION_LINK_CONFIG;
   cas_mif_poll(cp, 0);
   cp->link_fcntl = cas_phy_read(cp, MII_BMCR);
   cp->timer_ticks = 5;
   if (cp->opened)
    netif_info(cp, link, cp->dev,
        "Got link after fallback, retrying autoneg once...\n");
   cas_phy_write(cp, MII_BMCR,
          cp->link_fcntl | BMCR_ANENABLE |
          BMCR_ANRESTART);
   cas_mif_poll(cp, 1);

  } else if (cp->lstate != link_up) {
   cp->lstate = link_up;
   cp->link_transition = LINK_TRANSITION_LINK_UP;

   if (cp->opened) {
    cas_set_link_modes(cp);
    netif_carrier_on(cp->dev);
   }
  }
  return 0;
 }




 restart = 0;
 if (cp->lstate == link_up) {
  cp->lstate = link_down;
  cp->link_transition = LINK_TRANSITION_LINK_DOWN;

  netif_carrier_off(cp->dev);
  if (cp->opened)
   netif_info(cp, link, cp->dev, "Link down\n");
  restart = 1;

 } else if (++cp->timer_ticks > 10)
  cas_mdio_link_not_up(cp);

 return restart;
}
