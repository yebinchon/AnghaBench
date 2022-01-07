
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct sja1105_private {TYPE_1__ tagger_data; TYPE_2__* ports; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; int tx_type; scalar_t__ flags; } ;
struct dsa_switch {struct sja1105_private* priv; } ;
typedef int config ;
struct TYPE_4__ {scalar_t__ hwts_tx_en; } ;


 int EFAULT ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V2_L2_EVENT ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SJA1105_HWTS_RX_EN ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int sja1105_hwtstamp_get(struct dsa_switch *ds, int port,
    struct ifreq *ifr)
{
 struct sja1105_private *priv = ds->priv;
 struct hwtstamp_config config;

 config.flags = 0;
 if (priv->ports[port].hwts_tx_en)
  config.tx_type = HWTSTAMP_TX_ON;
 else
  config.tx_type = HWTSTAMP_TX_OFF;
 if (test_bit(SJA1105_HWTS_RX_EN, &priv->tagger_data.state))
  config.rx_filter = HWTSTAMP_FILTER_PTP_V2_L2_EVENT;
 else
  config.rx_filter = HWTSTAMP_FILTER_NONE;

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
