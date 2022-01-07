
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbmac_softc {int rx_hw_checksum; int sbm_rxfilter; } ;


 int DISABLE ;
 int ENABLE ;
 scalar_t__ K_SYS_SOC_TYPE_BCM1250 ;
 int M_MAC_IPHDR_OFFSET ;
 int V_MAC_IPHDR_OFFSET (int) ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;
 int periph_rev ;
 scalar_t__ soc_type ;

__attribute__((used)) static void sbmac_set_iphdr_offset(struct sbmac_softc *sc)
{
 uint64_t reg;


 reg = __raw_readq(sc->sbm_rxfilter);
 reg &= ~M_MAC_IPHDR_OFFSET | V_MAC_IPHDR_OFFSET(15);
 __raw_writeq(reg, sc->sbm_rxfilter);



 if (soc_type == K_SYS_SOC_TYPE_BCM1250 && periph_rev < 2) {
  sc->rx_hw_checksum = DISABLE;
 } else {
  sc->rx_hw_checksum = ENABLE;
 }
}
