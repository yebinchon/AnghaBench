
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int resetCount; } ;
struct TYPE_12__ {int lmc_device; TYPE_2__ extra_stats; TYPE_1__* lmc_media; int lmc_gpio; int lmc_miireg16; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_10__ {int (* init ) (TYPE_3__* const) ;} ;


 int LMC_CSR_WRITE (TYPE_3__* const,int ,int ) ;
 int LMC_GEP_RESET ;
 int LMC_MII16_FIFO_RESET ;
 int csr_gp ;
 int lmc_gpio_mkinput (TYPE_3__* const,int ) ;
 int lmc_gpio_mkoutput (TYPE_3__* const,int ) ;
 int lmc_mii_writereg (TYPE_3__* const,int ,int,int ) ;
 int lmc_trace (int ,char*) ;
 int stub1 (TYPE_3__* const) ;
 int udelay (int) ;

__attribute__((used)) static void lmc_reset(lmc_softc_t * const sc)
{
    lmc_trace(sc->lmc_device, "lmc_reset in");
    sc->lmc_miireg16 |= LMC_MII16_FIFO_RESET;
    lmc_mii_writereg(sc, 0, 16, sc->lmc_miireg16);

    sc->lmc_miireg16 &= ~LMC_MII16_FIFO_RESET;
    lmc_mii_writereg(sc, 0, 16, sc->lmc_miireg16);




    lmc_gpio_mkoutput(sc, LMC_GEP_RESET);






    sc->lmc_gpio &= ~(LMC_GEP_RESET);
    LMC_CSR_WRITE(sc, csr_gp, sc->lmc_gpio);




    udelay(50);




    lmc_gpio_mkinput(sc, LMC_GEP_RESET);




    sc->lmc_media->init(sc);

    sc->extra_stats.resetCount++;
    lmc_trace(sc->lmc_device, "lmc_reset out");
}
