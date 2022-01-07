
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int spec_priv; } ;


 int ath9k_cmn_spectral_deinit_debug (int *) ;

void ath9k_deinit_debug(struct ath_softc *sc)
{
 ath9k_cmn_spectral_deinit_debug(&sc->spec_priv);
}
