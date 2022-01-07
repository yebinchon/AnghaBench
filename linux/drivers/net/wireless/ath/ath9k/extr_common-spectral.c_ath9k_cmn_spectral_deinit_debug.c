
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_spec_scan_priv {int * rfs_chan_spec_scan; } ;


 int relay_close (int *) ;

void ath9k_cmn_spectral_deinit_debug(struct ath_spec_scan_priv *spec_priv)
{
 if (spec_priv->rfs_chan_spec_scan) {
  relay_close(spec_priv->rfs_chan_spec_scan);
  spec_priv->rfs_chan_spec_scan = ((void*)0);
 }
}
