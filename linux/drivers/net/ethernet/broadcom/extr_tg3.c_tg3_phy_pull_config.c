
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int advertising; int flowctrl; int autoneg; int duplex; int speed; } ;
struct tg3 {int phy_flags; TYPE_1__ link_config; } ;


 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int ADVERTISE_1000XFULL ;
 int ADVERTISE_1000XHALF ;
 int ADVERTISE_ALL ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EIO ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int PAUSE_AUTONEG ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int TG3_PHYFLG_10_100_ONLY ;
 int TG3_PHYFLG_ANY_SERDES ;
 int mii_adv_to_ethtool_adv_t (int) ;
 int mii_adv_to_ethtool_adv_x (int) ;
 int mii_ctrl1000_to_ethtool_adv_t (int) ;
 int tg3_decode_flowctrl_1000T (int) ;
 int tg3_decode_flowctrl_1000X (int) ;
 int tg3_flag_clear (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_readphy (struct tg3*,int ,int*) ;

__attribute__((used)) static int tg3_phy_pull_config(struct tg3 *tp)
{
 int err;
 u32 val;

 err = tg3_readphy(tp, MII_BMCR, &val);
 if (err)
  goto done;

 if (!(val & BMCR_ANENABLE)) {
  tp->link_config.autoneg = AUTONEG_DISABLE;
  tp->link_config.advertising = 0;
  tg3_flag_clear(tp, PAUSE_AUTONEG);

  err = -EIO;

  switch (val & (128 | 129)) {
  case 0:
   if (tp->phy_flags & TG3_PHYFLG_ANY_SERDES)
    goto done;

   tp->link_config.speed = SPEED_10;
   break;
  case 129:
   if (tp->phy_flags & TG3_PHYFLG_ANY_SERDES)
    goto done;

   tp->link_config.speed = SPEED_100;
   break;
  case 128:
   if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
    tp->link_config.speed = SPEED_1000;
    break;
   }

  default:
   goto done;
  }

  if (val & BMCR_FULLDPLX)
   tp->link_config.duplex = DUPLEX_FULL;
  else
   tp->link_config.duplex = DUPLEX_HALF;

  tp->link_config.flowctrl = FLOW_CTRL_RX | FLOW_CTRL_TX;

  err = 0;
  goto done;
 }

 tp->link_config.autoneg = AUTONEG_ENABLE;
 tp->link_config.advertising = ADVERTISED_Autoneg;
 tg3_flag_set(tp, PAUSE_AUTONEG);

 if (!(tp->phy_flags & TG3_PHYFLG_ANY_SERDES)) {
  u32 adv;

  err = tg3_readphy(tp, MII_ADVERTISE, &val);
  if (err)
   goto done;

  adv = mii_adv_to_ethtool_adv_t(val & ADVERTISE_ALL);
  tp->link_config.advertising |= adv | ADVERTISED_TP;

  tp->link_config.flowctrl = tg3_decode_flowctrl_1000T(val);
 } else {
  tp->link_config.advertising |= ADVERTISED_FIBRE;
 }

 if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
  u32 adv;

  if (!(tp->phy_flags & TG3_PHYFLG_ANY_SERDES)) {
   err = tg3_readphy(tp, MII_CTRL1000, &val);
   if (err)
    goto done;

   adv = mii_ctrl1000_to_ethtool_adv_t(val);
  } else {
   err = tg3_readphy(tp, MII_ADVERTISE, &val);
   if (err)
    goto done;

   adv = tg3_decode_flowctrl_1000X(val);
   tp->link_config.flowctrl = adv;

   val &= (ADVERTISE_1000XHALF | ADVERTISE_1000XFULL);
   adv = mii_adv_to_ethtool_adv_x(val);
  }

  tp->link_config.advertising |= adv;
 }

done:
 return err;
}
