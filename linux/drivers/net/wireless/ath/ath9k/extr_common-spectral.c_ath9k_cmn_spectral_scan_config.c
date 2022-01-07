
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int endless; } ;
struct ath_spec_scan_priv {int spectral_mode; TYPE_1__ spec_config; struct ath_hw* ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
typedef enum spectral_mode { ____Placeholder_spectral_mode } spectral_mode ;
struct TYPE_6__ {int (* spectral_scan_config ) (struct ath_hw*,TYPE_1__*) ;int spectral_scan_trigger; } ;
struct TYPE_5__ {int (* restore ) (struct ath_common*) ;int (* wakeup ) (struct ath_common*) ;} ;






 TYPE_3__* ath9k_hw_ops (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*) ;
 TYPE_2__* ath_ps_ops (struct ath_common*) ;
 int stub1 (struct ath_common*) ;
 int stub2 (struct ath_hw*,TYPE_1__*) ;
 int stub3 (struct ath_common*) ;

int ath9k_cmn_spectral_scan_config(struct ath_common *common,
          struct ath_spec_scan_priv *spec_priv,
          enum spectral_mode spectral_mode)
{
 struct ath_hw *ah = spec_priv->ah;

 if (!ath9k_hw_ops(ah)->spectral_scan_trigger) {
  ath_err(common, "spectrum analyzer not implemented on this hardware\n");
  return -1;
 }

 switch (spectral_mode) {
 case 129:
  spec_priv->spec_config.enabled = 0;
  break;
 case 131:



  spec_priv->spec_config.endless = 1;
  spec_priv->spec_config.enabled = 1;
  break;
 case 130:
 case 128:
  spec_priv->spec_config.endless = 0;
  spec_priv->spec_config.enabled = 1;
  break;
 default:
  return -1;
 }

 ath_ps_ops(common)->wakeup(common);
 ath9k_hw_ops(ah)->spectral_scan_config(ah, &spec_priv->spec_config);
 ath_ps_ops(common)->restore(common);

 spec_priv->spectral_mode = spectral_mode;

 return 0;
}
