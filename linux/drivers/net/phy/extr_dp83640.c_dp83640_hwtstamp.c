
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct phy_device {struct dp83640_private* priv; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {scalar_t__ tx_type; int rx_filter; scalar_t__ flags; } ;
struct dp83640_private {scalar_t__ hwts_tx_en; int hwts_rx_en; int layer; int version; TYPE_1__* clock; } ;
typedef int cfg ;
struct TYPE_2__ {int extreg_lock; } ;


 int CHK_1STEP ;
 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ HWTSTAMP_TX_ONESTEP_SYNC ;
 int PAGE5 ;
 int PTP_CLASS_L2 ;
 int PTP_CLASS_L4 ;
 int PTP_CLASS_V1 ;
 void* PTP_CLASS_V2 ;
 int PTP_RXCFG0 ;
 int PTP_TXCFG0 ;
 int RX_IPV4_EN ;
 int RX_IPV6_EN ;
 int RX_L2_EN ;
 int RX_TS_EN ;
 int SYNC_1STEP ;
 int TX_IPV4_EN ;
 int TX_IPV6_EN ;
 int TX_L2_EN ;
 int TX_PTP_VER_MASK ;
 int TX_PTP_VER_SHIFT ;
 int TX_TS_EN ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int ext_write (int ,struct phy_device*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dp83640_hwtstamp(struct phy_device *phydev, struct ifreq *ifr)
{
 struct dp83640_private *dp83640 = phydev->priv;
 struct hwtstamp_config cfg;
 u16 txcfg0, rxcfg0;

 if (copy_from_user(&cfg, ifr->ifr_data, sizeof(cfg)))
  return -EFAULT;

 if (cfg.flags)
  return -EINVAL;

 if (cfg.tx_type < 0 || cfg.tx_type > HWTSTAMP_TX_ONESTEP_SYNC)
  return -ERANGE;

 dp83640->hwts_tx_en = cfg.tx_type;

 switch (cfg.rx_filter) {
 case 140:
  dp83640->hwts_rx_en = 0;
  dp83640->layer = 0;
  dp83640->version = 0;
  break;
 case 138:
 case 137:
 case 139:
  dp83640->hwts_rx_en = 1;
  dp83640->layer = PTP_CLASS_L4;
  dp83640->version = PTP_CLASS_V1;
  break;
 case 130:
 case 129:
 case 131:
  dp83640->hwts_rx_en = 1;
  dp83640->layer = PTP_CLASS_L4;
  dp83640->version = PTP_CLASS_V2;
  break;
 case 133:
 case 132:
 case 134:
  dp83640->hwts_rx_en = 1;
  dp83640->layer = PTP_CLASS_L2;
  dp83640->version = PTP_CLASS_V2;
  break;
 case 135:
 case 128:
 case 136:
  dp83640->hwts_rx_en = 1;
  dp83640->layer = PTP_CLASS_L4 | PTP_CLASS_L2;
  dp83640->version = PTP_CLASS_V2;
  break;
 default:
  return -ERANGE;
 }

 txcfg0 = (dp83640->version & TX_PTP_VER_MASK) << TX_PTP_VER_SHIFT;
 rxcfg0 = (dp83640->version & TX_PTP_VER_MASK) << TX_PTP_VER_SHIFT;

 if (dp83640->layer & PTP_CLASS_L2) {
  txcfg0 |= TX_L2_EN;
  rxcfg0 |= RX_L2_EN;
 }
 if (dp83640->layer & PTP_CLASS_L4) {
  txcfg0 |= TX_IPV6_EN | TX_IPV4_EN;
  rxcfg0 |= RX_IPV6_EN | RX_IPV4_EN;
 }

 if (dp83640->hwts_tx_en)
  txcfg0 |= TX_TS_EN;

 if (dp83640->hwts_tx_en == HWTSTAMP_TX_ONESTEP_SYNC)
  txcfg0 |= SYNC_1STEP | CHK_1STEP;

 if (dp83640->hwts_rx_en)
  rxcfg0 |= RX_TS_EN;

 mutex_lock(&dp83640->clock->extreg_lock);

 ext_write(0, phydev, PAGE5, PTP_TXCFG0, txcfg0);
 ext_write(0, phydev, PAGE5, PTP_RXCFG0, rxcfg0);

 mutex_unlock(&dp83640->clock->extreg_lock);

 return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
}
