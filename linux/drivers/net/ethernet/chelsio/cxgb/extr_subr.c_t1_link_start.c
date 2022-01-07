
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_config {int requested_fc; int supported; int advertising; scalar_t__ autoneg; int speed; int requested_speed; int duplex; int requested_duplex; unsigned char fc; } ;
struct cphy {TYPE_4__* ops; void* state; } ;
struct cmac {TYPE_3__* ops; TYPE_2__* adapter; } ;
struct TYPE_8__ {int (* reset ) (struct cphy*,int ) ;int (* autoneg_enable ) (struct cphy*) ;int (* set_speed_duplex ) (struct cphy*,int,int) ;int (* advertise ) (struct cphy*,int) ;} ;
struct TYPE_7__ {int (* set_speed_duplex_fc ) (struct cmac*,int,int,unsigned int) ;} ;
struct TYPE_5__ {int nports; } ;
struct TYPE_6__ {TYPE_1__ params; } ;


 int ADVERTISED_ASYM_PAUSE ;
 int ADVERTISED_PAUSE ;
 scalar_t__ AUTONEG_DISABLE ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 void* PHY_AUTONEG_EN ;
 void* PHY_AUTONEG_RDY ;
 int SUPPORTED_Autoneg ;
 int stub1 (struct cphy*,int) ;
 int stub2 (struct cmac*,int,int,unsigned int) ;
 int stub3 (struct cphy*,int,int) ;
 int stub4 (struct cphy*,int ) ;
 int stub5 (struct cphy*) ;
 int stub6 (struct cmac*,int,int,unsigned int) ;
 int stub7 (struct cphy*,int ) ;

int t1_link_start(struct cphy *phy, struct cmac *mac, struct link_config *lc)
{
 unsigned int fc = lc->requested_fc & (PAUSE_RX | PAUSE_TX);

 if (lc->supported & SUPPORTED_Autoneg) {
  lc->advertising &= ~(ADVERTISED_ASYM_PAUSE | ADVERTISED_PAUSE);
  if (fc) {
   if (fc == ((PAUSE_RX | PAUSE_TX) &
       (mac->adapter->params.nports < 2)))
    lc->advertising |= ADVERTISED_PAUSE;
   else {
    lc->advertising |= ADVERTISED_ASYM_PAUSE;
    if (fc == PAUSE_RX)
     lc->advertising |= ADVERTISED_PAUSE;
   }
  }
  phy->ops->advertise(phy, lc->advertising);

  if (lc->autoneg == AUTONEG_DISABLE) {
   lc->speed = lc->requested_speed;
   lc->duplex = lc->requested_duplex;
   lc->fc = (unsigned char)fc;
   mac->ops->set_speed_duplex_fc(mac, lc->speed,
            lc->duplex, fc);

   phy->state = PHY_AUTONEG_RDY;
   phy->ops->set_speed_duplex(phy, lc->speed, lc->duplex);
   phy->ops->reset(phy, 0);
  } else {
   phy->state = PHY_AUTONEG_EN;
   phy->ops->autoneg_enable(phy);
  }
 } else {
  phy->state = PHY_AUTONEG_RDY;
  mac->ops->set_speed_duplex_fc(mac, -1, -1, fc);
  lc->fc = (unsigned char)fc;
  phy->ops->reset(phy, 0);
 }
 return 0;
}
