
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int spec_priv; } ;


 int ath9k_cmn_spectral_deinit_debug (int *) ;

void ath9k_htc_deinit_debug(struct ath9k_htc_priv *priv)
{
 ath9k_cmn_spectral_deinit_debug(&priv->spec_priv);
}
