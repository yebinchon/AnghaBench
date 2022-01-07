
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rxstats; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ath_softc {TYPE_2__ debug; } ;
struct ath_rx_status {int dummy; } ;


 int ath9k_cmn_debug_stat_rx (int *,struct ath_rx_status*) ;

void ath_debug_stat_rx(struct ath_softc *sc, struct ath_rx_status *rs)
{
 ath9k_cmn_debug_stat_rx(&sc->debug.stats.rxstats, rs);
}
