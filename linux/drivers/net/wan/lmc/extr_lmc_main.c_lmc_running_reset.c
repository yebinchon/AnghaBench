
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_12__ {int tx_tbusy0; } ;
struct TYPE_13__ {int lmc_intrmask; int lmc_cmdmode; TYPE_2__ extra_stats; scalar_t__ lmc_txfull; TYPE_1__* lmc_media; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_11__ {int (* set_status ) (TYPE_3__*,int *) ;int (* set_link_status ) (TYPE_3__*,int) ;} ;


 int LMC_CSR_WRITE (TYPE_3__*,int ,int) ;
 int TULIP_CMD_RXRUN ;
 int TULIP_CMD_TXRUN ;
 int TULIP_DEFAULT_INTR_MASK ;
 int csr_command ;
 int csr_intr ;
 TYPE_3__* dev_to_sc (struct net_device*) ;
 int lmc_dec_reset (TYPE_3__*) ;
 int lmc_reset (TYPE_3__*) ;
 int lmc_softreset (TYPE_3__*) ;
 int lmc_trace (struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int stub1 (TYPE_3__*,int) ;
 int stub2 (TYPE_3__*,int *) ;

__attribute__((used)) static void lmc_running_reset (struct net_device *dev)
{
    lmc_softc_t *sc = dev_to_sc(dev);

    lmc_trace(dev, "lmc_running_reset in");



    LMC_CSR_WRITE (sc, csr_intr, 0x00000000);

    lmc_dec_reset (sc);
    lmc_reset (sc);
    lmc_softreset (sc);

    sc->lmc_media->set_link_status (sc, 1);
    sc->lmc_media->set_status (sc, ((void*)0));

    netif_wake_queue(dev);

    sc->lmc_txfull = 0;
    sc->extra_stats.tx_tbusy0++;

    sc->lmc_intrmask = TULIP_DEFAULT_INTR_MASK;
    LMC_CSR_WRITE (sc, csr_intr, sc->lmc_intrmask);

    sc->lmc_cmdmode |= (TULIP_CMD_TXRUN | TULIP_CMD_RXRUN);
    LMC_CSR_WRITE (sc, csr_command, sc->lmc_cmdmode);

    lmc_trace(dev, "lmc_running_reset_out");
}
