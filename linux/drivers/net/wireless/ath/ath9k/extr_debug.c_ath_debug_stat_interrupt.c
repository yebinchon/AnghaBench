
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int gen_timer; int mci; int tsfoor; int dtim; int dtimsync; int cabend; int tim; int gtt; int cst; int bnr; int bmiss; int swba; int rx_keycache_miss; int rxphyerr; int txurn; int txok; int rxorn; int rxeol; int rxok; int bb_watchdog; int rxhp; int rxlp; int total; } ;
struct TYPE_9__ {TYPE_3__ istats; } ;
struct TYPE_10__ {TYPE_4__ stats; } ;
struct ath_softc {TYPE_5__ debug; TYPE_2__* sc_ah; } ;
typedef enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;
struct TYPE_6__ {int hw_caps; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_INT_BB_WATCHDOG ;
 int ATH9K_INT_BMISS ;
 int ATH9K_INT_BNR ;
 int ATH9K_INT_CABEND ;
 int ATH9K_INT_CST ;
 int ATH9K_INT_DTIM ;
 int ATH9K_INT_DTIMSYNC ;
 int ATH9K_INT_GENTIMER ;
 int ATH9K_INT_GTT ;
 int ATH9K_INT_MCI ;
 int ATH9K_INT_RX ;
 int ATH9K_INT_RXEOL ;
 int ATH9K_INT_RXHP ;
 int ATH9K_INT_RXKCM ;
 int ATH9K_INT_RXLP ;
 int ATH9K_INT_RXORN ;
 int ATH9K_INT_RXPHY ;
 int ATH9K_INT_SWBA ;
 int ATH9K_INT_TIM ;
 int ATH9K_INT_TSFOOR ;
 int ATH9K_INT_TX ;
 int ATH9K_INT_TXURN ;

void ath_debug_stat_interrupt(struct ath_softc *sc, enum ath9k_int status)
{
 if (status)
  sc->debug.stats.istats.total++;
 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_EDMA) {
  if (status & ATH9K_INT_RXLP)
   sc->debug.stats.istats.rxlp++;
  if (status & ATH9K_INT_RXHP)
   sc->debug.stats.istats.rxhp++;
  if (status & ATH9K_INT_BB_WATCHDOG)
   sc->debug.stats.istats.bb_watchdog++;
 } else {
  if (status & ATH9K_INT_RX)
   sc->debug.stats.istats.rxok++;
 }
 if (status & ATH9K_INT_RXEOL)
  sc->debug.stats.istats.rxeol++;
 if (status & ATH9K_INT_RXORN)
  sc->debug.stats.istats.rxorn++;
 if (status & ATH9K_INT_TX)
  sc->debug.stats.istats.txok++;
 if (status & ATH9K_INT_TXURN)
  sc->debug.stats.istats.txurn++;
 if (status & ATH9K_INT_RXPHY)
  sc->debug.stats.istats.rxphyerr++;
 if (status & ATH9K_INT_RXKCM)
  sc->debug.stats.istats.rx_keycache_miss++;
 if (status & ATH9K_INT_SWBA)
  sc->debug.stats.istats.swba++;
 if (status & ATH9K_INT_BMISS)
  sc->debug.stats.istats.bmiss++;
 if (status & ATH9K_INT_BNR)
  sc->debug.stats.istats.bnr++;
 if (status & ATH9K_INT_CST)
  sc->debug.stats.istats.cst++;
 if (status & ATH9K_INT_GTT)
  sc->debug.stats.istats.gtt++;
 if (status & ATH9K_INT_TIM)
  sc->debug.stats.istats.tim++;
 if (status & ATH9K_INT_CABEND)
  sc->debug.stats.istats.cabend++;
 if (status & ATH9K_INT_DTIMSYNC)
  sc->debug.stats.istats.dtimsync++;
 if (status & ATH9K_INT_DTIM)
  sc->debug.stats.istats.dtim++;
 if (status & ATH9K_INT_TSFOOR)
  sc->debug.stats.istats.tsfoor++;
 if (status & ATH9K_INT_MCI)
  sc->debug.stats.istats.mci++;
 if (status & ATH9K_INT_GENTIMER)
  sc->debug.stats.istats.gen_timer++;
}
