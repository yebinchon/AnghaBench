
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int exp_avg_rssi; int exp_avg_noise; scalar_t__ rx_packets; scalar_t__ tx_packets; scalar_t__ missed_beacons; scalar_t__ missed_adhoc_beacons; scalar_t__ last_tx_failures; scalar_t__ last_rx_err; scalar_t__ last_tx_packets; scalar_t__ last_rx_packets; scalar_t__ last_missed_beacons; scalar_t__ last_rate; int average_missed_beacons; scalar_t__ quality; } ;


 int IPW_ORD_STAT_RX_ERR_CRC ;
 int IPW_ORD_STAT_TX_FAILURE ;
 int average_init (int *) ;
 int ipw_get_ordinal (struct ipw_priv*,int ,scalar_t__*,int*) ;

__attribute__((used)) static void ipw_reset_stats(struct ipw_priv *priv)
{
 u32 len = sizeof(u32);

 priv->quality = 0;

 average_init(&priv->average_missed_beacons);
 priv->exp_avg_rssi = -60;
 priv->exp_avg_noise = -85 + 0x100;

 priv->last_rate = 0;
 priv->last_missed_beacons = 0;
 priv->last_rx_packets = 0;
 priv->last_tx_packets = 0;
 priv->last_tx_failures = 0;



 ipw_get_ordinal(priv, IPW_ORD_STAT_RX_ERR_CRC,
   &priv->last_rx_err, &len);
 ipw_get_ordinal(priv, IPW_ORD_STAT_TX_FAILURE,
   &priv->last_tx_failures, &len);


 priv->missed_adhoc_beacons = 0;
 priv->missed_beacons = 0;
 priv->tx_packets = 0;
 priv->rx_packets = 0;

}
