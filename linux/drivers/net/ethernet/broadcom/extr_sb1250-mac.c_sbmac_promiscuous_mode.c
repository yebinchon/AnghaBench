
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbmac_softc {scalar_t__ sbm_state; int sbm_rxfilter; } ;


 int M_MAC_ALLPKT_EN ;
 int __raw_readq (int ) ;
 int __raw_writeq (int ,int ) ;
 scalar_t__ sbmac_state_on ;

__attribute__((used)) static void sbmac_promiscuous_mode(struct sbmac_softc *sc,int onoff)
{
 uint64_t reg;

 if (sc->sbm_state != sbmac_state_on)
  return;

 if (onoff) {
  reg = __raw_readq(sc->sbm_rxfilter);
  reg |= M_MAC_ALLPKT_EN;
  __raw_writeq(reg, sc->sbm_rxfilter);
 }
 else {
  reg = __raw_readq(sc->sbm_rxfilter);
  reg &= ~M_MAC_ALLPKT_EN;
  __raw_writeq(reg, sc->sbm_rxfilter);
 }
}
