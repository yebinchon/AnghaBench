
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_vif {int ar; int spectral_enabled; } ;


 int SPECTRAL_DISABLED ;
 int ath10k_spectral_scan_config (int ,int ) ;

int ath10k_spectral_vif_stop(struct ath10k_vif *arvif)
{
 if (!arvif->spectral_enabled)
  return 0;

 return ath10k_spectral_scan_config(arvif->ar, SPECTRAL_DISABLED);
}
