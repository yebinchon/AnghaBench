
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int irq; } ;
struct TYPE_13__ {int tx_tbusy0; int tx_tbusy1; } ;
struct TYPE_14__ {int got_irq; TYPE_4__ extra_stats; struct sk_buff** lmc_txq; struct sk_buff** lmc_rxq; TYPE_3__* lmc_rxring; TYPE_2__* lmc_device; } ;
typedef TYPE_5__ lmc_softc_t ;
struct TYPE_12__ {int buffer1; scalar_t__ length; scalar_t__ status; } ;
struct TYPE_10__ {int rx_missed_errors; } ;
struct TYPE_11__ {TYPE_1__ stats; } ;


 int LMC_CSR_READ (TYPE_5__*,int ) ;
 int LMC_CSR_WRITE (TYPE_5__*,int ,int) ;
 int LMC_DEC_SR ;
 int LMC_DEC_ST ;
 int LMC_MII16_LED_ALL ;
 int LMC_RXDESCS ;
 int LMC_TXDESCS ;
 int csr_command ;
 int csr_intr ;
 int csr_missed_frames ;
 int dev_kfree_skb (struct sk_buff*) ;
 TYPE_5__* dev_to_sc (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int lmc_led_off (TYPE_5__*,int ) ;
 int lmc_trace (struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int lmc_ifdown (struct net_device *dev)
{
    lmc_softc_t *sc = dev_to_sc(dev);
    u32 csr6;
    int i;

    lmc_trace(dev, "lmc_ifdown in");



    netif_stop_queue(dev);
    sc->extra_stats.tx_tbusy1++;



    LMC_CSR_WRITE (sc, csr_intr, 0x00000000);


    csr6 = LMC_CSR_READ (sc, csr_command);
    csr6 &= ~LMC_DEC_ST;
    csr6 &= ~LMC_DEC_SR;
    LMC_CSR_WRITE (sc, csr_command, csr6);

    sc->lmc_device->stats.rx_missed_errors +=
     LMC_CSR_READ(sc, csr_missed_frames) & 0xffff;


    if(sc->got_irq == 1){
        free_irq (dev->irq, dev);
        sc->got_irq = 0;
    }


    for (i = 0; i < LMC_RXDESCS; i++)
    {
        struct sk_buff *skb = sc->lmc_rxq[i];
        sc->lmc_rxq[i] = ((void*)0);
        sc->lmc_rxring[i].status = 0;
        sc->lmc_rxring[i].length = 0;
        sc->lmc_rxring[i].buffer1 = 0xDEADBEEF;
        if (skb != ((void*)0))
            dev_kfree_skb(skb);
        sc->lmc_rxq[i] = ((void*)0);
    }

    for (i = 0; i < LMC_TXDESCS; i++)
    {
        if (sc->lmc_txq[i] != ((void*)0))
            dev_kfree_skb(sc->lmc_txq[i]);
        sc->lmc_txq[i] = ((void*)0);
    }

    lmc_led_off (sc, LMC_MII16_LED_ALL);

    netif_wake_queue(dev);
    sc->extra_stats.tx_tbusy0++;

    lmc_trace(dev, "lmc_ifdown out");

    return 0;
}
