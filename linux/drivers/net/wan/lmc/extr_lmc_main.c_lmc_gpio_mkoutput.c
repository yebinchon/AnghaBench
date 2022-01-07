
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lmc_gpio_io; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 int LMC_CSR_WRITE (TYPE_1__* const,int ,int) ;
 int TULIP_GP_PINSET ;
 int csr_gp ;
 int lmc_trace (int ,char*) ;

void lmc_gpio_mkoutput(lmc_softc_t * const sc, u32 bits)
{
    lmc_trace(sc->lmc_device, "lmc_gpio_mkoutput in");
    sc->lmc_gpio_io |= bits;
    LMC_CSR_WRITE(sc, csr_gp, TULIP_GP_PINSET | (sc->lmc_gpio_io));
    lmc_trace(sc->lmc_device, "lmc_gpio_mkoutput out");
}
