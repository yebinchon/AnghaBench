
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_rx_status {int dummy; } ;
struct TYPE_2__ {int rx_stats; } ;
struct ath9k_htc_priv {TYPE_1__ debug; } ;


 int ath9k_cmn_debug_stat_rx (int *,struct ath_rx_status*) ;

void ath9k_htc_err_stat_rx(struct ath9k_htc_priv *priv,
        struct ath_rx_status *rs)
{
 ath9k_cmn_debug_stat_rx(&priv->debug.rx_stats, rs);
}
