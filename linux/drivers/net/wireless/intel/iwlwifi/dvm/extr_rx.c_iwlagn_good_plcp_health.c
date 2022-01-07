
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct statistics_rx_phy {int plcp_err; } ;
struct statistics_rx_ht_phy {int plcp_err; } ;
struct TYPE_5__ {int plcp_err; } ;
struct TYPE_4__ {int plcp_err; } ;
struct TYPE_6__ {TYPE_2__ rx_ofdm_ht; TYPE_1__ rx_ofdm; } ;
struct iwl_priv {int plcp_delta_threshold; TYPE_3__ statistics; } ;


 int IWL_DEBUG_RADIO (struct iwl_priv*,char*,...) ;
 int IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool iwlagn_good_plcp_health(struct iwl_priv *priv,
     struct statistics_rx_phy *cur_ofdm,
     struct statistics_rx_ht_phy *cur_ofdm_ht,
     unsigned int msecs)
{
 int delta;
 int threshold = priv->plcp_delta_threshold;

 if (threshold == IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE) {
  IWL_DEBUG_RADIO(priv, "plcp_err check disabled\n");
  return 1;
 }

 delta = le32_to_cpu(cur_ofdm->plcp_err) -
  le32_to_cpu(priv->statistics.rx_ofdm.plcp_err) +
  le32_to_cpu(cur_ofdm_ht->plcp_err) -
  le32_to_cpu(priv->statistics.rx_ofdm_ht.plcp_err);


 if (delta <= 0)
  return 1;

 if ((delta * 100 / msecs) > threshold) {
  IWL_DEBUG_RADIO(priv,
    "plcp health threshold %u delta %d msecs %u\n",
    threshold, delta, msecs);
  return 0;
 }

 return 1;
}
