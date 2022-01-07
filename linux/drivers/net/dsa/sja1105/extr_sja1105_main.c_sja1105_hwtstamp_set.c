
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct sja1105_private {TYPE_2__ tagger_data; TYPE_1__* ports; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;
typedef int config ;
struct TYPE_3__ {int hwts_tx_en; } ;


 int EFAULT ;
 int ERANGE ;



 int SJA1105_HWTS_RX_EN ;
 int clear_bit (int ,int *) ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int dev_err (int ,char*,int) ;
 int set_bit (int ,int *) ;
 int sja1105_change_rxtstamping (struct sja1105_private*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int sja1105_hwtstamp_set(struct dsa_switch *ds, int port,
    struct ifreq *ifr)
{
 struct sja1105_private *priv = ds->priv;
 struct hwtstamp_config config;
 bool rx_on;
 int rc;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 switch (config.tx_type) {
 case 129:
  priv->ports[port].hwts_tx_en = 0;
  break;
 case 128:
  priv->ports[port].hwts_tx_en = 1;
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 130:
  rx_on = 0;
  break;
 default:
  rx_on = 1;
  break;
 }

 if (rx_on != test_bit(SJA1105_HWTS_RX_EN, &priv->tagger_data.state)) {
  clear_bit(SJA1105_HWTS_RX_EN, &priv->tagger_data.state);

  rc = sja1105_change_rxtstamping(priv, rx_on);
  if (rc < 0) {
   dev_err(ds->dev,
    "Failed to change RX timestamping: %d\n", rc);
   return rc;
  }
  if (rx_on)
   set_bit(SJA1105_HWTS_RX_EN, &priv->tagger_data.state);
 }

 if (copy_to_user(ifr->ifr_data, &config, sizeof(config)))
  return -EFAULT;
 return 0;
}
