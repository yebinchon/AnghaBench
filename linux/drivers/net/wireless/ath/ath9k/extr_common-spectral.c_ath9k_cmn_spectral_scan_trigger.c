
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int enabled; } ;
struct ath_spec_scan_priv {int spectral_mode; TYPE_1__ spec_config; struct ath_hw* ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_6__ {int (* spectral_scan_trigger ) (struct ath_hw*) ;} ;
struct TYPE_5__ {int (* restore ) (struct ath_common*) ;int (* wakeup ) (struct ath_common*) ;} ;


 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 int CONFIG_ATH9K_TX99 ;
 scalar_t__ IS_ENABLED (int ) ;
 int ath9k_cmn_spectral_scan_config (struct ath_common*,struct ath_spec_scan_priv*,int ) ;
 int ath9k_hw_getrxfilter (struct ath_hw*) ;
 TYPE_3__* ath9k_hw_ops (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int) ;
 int ath_err (struct ath_common*,char*) ;
 TYPE_2__* ath_ps_ops (struct ath_common*) ;
 int stub1 (struct ath_common*) ;
 int stub2 (struct ath_hw*) ;
 int stub3 (struct ath_common*) ;

void ath9k_cmn_spectral_scan_trigger(struct ath_common *common,
     struct ath_spec_scan_priv *spec_priv)
{
 struct ath_hw *ah = spec_priv->ah;
 u32 rxfilter;

 if (IS_ENABLED(CONFIG_ATH9K_TX99))
  return;

 if (!ath9k_hw_ops(ah)->spectral_scan_trigger) {
  ath_err(common, "spectrum analyzer not implemented on this hardware\n");
  return;
 }

 if (!spec_priv->spec_config.enabled)
  return;

 ath_ps_ops(common)->wakeup(common);
 rxfilter = ath9k_hw_getrxfilter(ah);
 ath9k_hw_setrxfilter(ah, rxfilter |
     ATH9K_RX_FILTER_PHYRADAR |
     ATH9K_RX_FILTER_PHYERR);






 ath9k_cmn_spectral_scan_config(common, spec_priv, spec_priv->spectral_mode);
 ath9k_hw_ops(ah)->spectral_scan_trigger(ah);
 ath_ps_ops(common)->restore(common);
}
