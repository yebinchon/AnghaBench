
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lmc_gpio; } ;
typedef TYPE_1__ lmc_softc_t ;


 int LMC_CSR_WRITE (TYPE_1__*,int ,int ) ;
 int LMC_GEP_CLK ;
 int LMC_GEP_DATA ;
 int csr_gp ;

__attribute__((used)) static inline void
write_av9110_bit (lmc_softc_t * sc, int c)
{



  sc->lmc_gpio &= ~(LMC_GEP_CLK);
  if (c & 0x01)
    sc->lmc_gpio |= LMC_GEP_DATA;
  else
    sc->lmc_gpio &= ~(LMC_GEP_DATA);
  LMC_CSR_WRITE (sc, csr_gp, sc->lmc_gpio);




  sc->lmc_gpio |= LMC_GEP_CLK;
  LMC_CSR_WRITE (sc, csr_gp, sc->lmc_gpio);




  sc->lmc_gpio &= ~(LMC_GEP_CLK);
  LMC_CSR_WRITE (sc, csr_gp, sc->lmc_gpio);
}
