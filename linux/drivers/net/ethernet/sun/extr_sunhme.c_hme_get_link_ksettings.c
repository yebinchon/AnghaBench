
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct happy_meal {int sw_bmcr; int sw_lpa; int happy_lock; int tcvregs; } ;
struct TYPE_4__ {int supported; } ;
struct TYPE_3__ {scalar_t__ speed; void* duplex; int autoneg; scalar_t__ phy_address; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int MII_BMCR ;
 int MII_LPA ;
 int PORT_TP ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SUPPORTED_100baseT_Full ;
 scalar_t__ SUPPORTED_100baseT_Half ;
 scalar_t__ SUPPORTED_10baseT_Full ;
 scalar_t__ SUPPORTED_10baseT_Half ;
 scalar_t__ SUPPORTED_Autoneg ;
 scalar_t__ SUPPORTED_MII ;
 scalar_t__ SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,scalar_t__) ;
 void* happy_meal_tcvr_read (struct happy_meal*,int ,int ) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hme_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct happy_meal *hp = netdev_priv(dev);
 u32 speed;
 u32 supported;

 supported =
  (SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
   SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
   SUPPORTED_Autoneg | SUPPORTED_TP | SUPPORTED_MII);


 cmd->base.port = PORT_TP;
 cmd->base.phy_address = 0;


 spin_lock_irq(&hp->happy_lock);
 hp->sw_bmcr = happy_meal_tcvr_read(hp, hp->tcvregs, MII_BMCR);
 hp->sw_lpa = happy_meal_tcvr_read(hp, hp->tcvregs, MII_LPA);
 spin_unlock_irq(&hp->happy_lock);

 if (hp->sw_bmcr & BMCR_ANENABLE) {
  cmd->base.autoneg = AUTONEG_ENABLE;
  speed = ((hp->sw_lpa & (LPA_100HALF | LPA_100FULL)) ?
    SPEED_100 : SPEED_10);
  if (speed == SPEED_100)
   cmd->base.duplex =
    (hp->sw_lpa & (LPA_100FULL)) ?
    DUPLEX_FULL : DUPLEX_HALF;
  else
   cmd->base.duplex =
    (hp->sw_lpa & (LPA_10FULL)) ?
    DUPLEX_FULL : DUPLEX_HALF;
 } else {
  cmd->base.autoneg = AUTONEG_DISABLE;
  speed = (hp->sw_bmcr & BMCR_SPEED100) ? SPEED_100 : SPEED_10;
  cmd->base.duplex =
   (hp->sw_bmcr & BMCR_FULLDPLX) ?
   DUPLEX_FULL : DUPLEX_HALF;
 }
 cmd->base.speed = speed;
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);

 return 0;
}
