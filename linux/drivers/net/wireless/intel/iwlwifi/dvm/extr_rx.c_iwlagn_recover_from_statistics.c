
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statistics_tx {int dummy; } ;
struct statistics_rx_phy {int dummy; } ;
struct statistics_rx_ht_phy {int dummy; } ;
struct iwl_priv {scalar_t__ rx_statistics_jiffies; int status; } ;


 int STATUS_EXIT_PENDING ;
 int iwl_force_rf_reset (struct iwl_priv*,int) ;
 int iwl_is_any_associated (struct iwl_priv*) ;
 int iwlagn_good_plcp_health (struct iwl_priv*,struct statistics_rx_phy*,struct statistics_rx_ht_phy*,unsigned int) ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwlagn_recover_from_statistics(struct iwl_priv *priv,
    struct statistics_rx_phy *cur_ofdm,
    struct statistics_rx_ht_phy *cur_ofdm_ht,
    struct statistics_tx *tx,
    unsigned long stamp)
{
 unsigned int msecs;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 msecs = jiffies_to_msecs(stamp - priv->rx_statistics_jiffies);


 if (!iwl_is_any_associated(priv))
  return;


 if (msecs < 99)
  return;

 if (!iwlagn_good_plcp_health(priv, cur_ofdm, cur_ofdm_ht, msecs))
  iwl_force_rf_reset(priv, 0);
}
