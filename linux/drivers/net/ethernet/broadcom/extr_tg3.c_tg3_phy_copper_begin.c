
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ autoneg; int advertising; int flowctrl; int active_speed; int speed; scalar_t__ active_duplex; scalar_t__ duplex; } ;
struct tg3 {int phy_flags; TYPE_1__ link_config; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISE_ALL ;
 scalar_t__ ASIC_REV_5714 ;
 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_LOOPBACK ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int BMSR_LSTATUS ;
 scalar_t__ DUPLEX_FULL ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_BMSR ;



 int TG3_PHYFLG_10_100_ONLY ;
 int TG3_PHYFLG_1G_ON_VAUX_OK ;
 int TG3_PHYFLG_DISABLE_1G_HD_ADV ;
 int TG3_PHYFLG_IS_LOW_POWER ;
 int TG3_PHYFLG_KEEP_LINK_ON_PWRDN ;
 int WOL_SPEED_100MB ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_phy_autoneg_cfg (struct tg3*,int,int) ;
 scalar_t__ tg3_readphy (struct tg3*,int ,int*) ;
 int tg3_writephy (struct tg3*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void tg3_phy_copper_begin(struct tg3 *tp)
{
 if (tp->link_config.autoneg == AUTONEG_ENABLE ||
     (tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER)) {
  u32 adv, fc;

  if ((tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER) &&
      !(tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN)) {
   adv = ADVERTISED_10baseT_Half |
         ADVERTISED_10baseT_Full;
   if (tg3_flag(tp, WOL_SPEED_100MB))
    adv |= ADVERTISED_100baseT_Half |
           ADVERTISED_100baseT_Full;
   if (tp->phy_flags & TG3_PHYFLG_1G_ON_VAUX_OK) {
    if (!(tp->phy_flags &
          TG3_PHYFLG_DISABLE_1G_HD_ADV))
     adv |= ADVERTISED_1000baseT_Half;
    adv |= ADVERTISED_1000baseT_Full;
   }

   fc = FLOW_CTRL_TX | FLOW_CTRL_RX;
  } else {
   adv = tp->link_config.advertising;
   if (tp->phy_flags & TG3_PHYFLG_10_100_ONLY)
    adv &= ~(ADVERTISED_1000baseT_Half |
      ADVERTISED_1000baseT_Full);

   fc = tp->link_config.flowctrl;
  }

  tg3_phy_autoneg_cfg(tp, adv, fc);

  if ((tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER) &&
      (tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN)) {




   return;
  }

  tg3_writephy(tp, MII_BMCR,
        BMCR_ANENABLE | BMCR_ANRESTART);
 } else {
  int i;
  u32 bmcr, orig_bmcr;

  tp->link_config.active_speed = tp->link_config.speed;
  tp->link_config.active_duplex = tp->link_config.duplex;

  if (tg3_asic_rev(tp) == ASIC_REV_5714) {




   tg3_writephy(tp, MII_ADVERTISE, ADVERTISE_ALL);
  }

  bmcr = 0;
  switch (tp->link_config.speed) {
  default:
  case 130:
   break;

  case 129:
   bmcr |= BMCR_SPEED100;
   break;

  case 128:
   bmcr |= BMCR_SPEED1000;
   break;
  }

  if (tp->link_config.duplex == DUPLEX_FULL)
   bmcr |= BMCR_FULLDPLX;

  if (!tg3_readphy(tp, MII_BMCR, &orig_bmcr) &&
      (bmcr != orig_bmcr)) {
   tg3_writephy(tp, MII_BMCR, BMCR_LOOPBACK);
   for (i = 0; i < 1500; i++) {
    u32 tmp;

    udelay(10);
    if (tg3_readphy(tp, MII_BMSR, &tmp) ||
        tg3_readphy(tp, MII_BMSR, &tmp))
     continue;
    if (!(tmp & BMSR_LSTATUS)) {
     udelay(40);
     break;
    }
   }
   tg3_writephy(tp, MII_BMCR, bmcr);
   udelay(40);
  }
 }
}
