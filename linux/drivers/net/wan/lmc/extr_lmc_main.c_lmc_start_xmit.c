
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {int tx_NoCompleteCnt; int tx_tbusy1; } ;
struct TYPE_8__ {int lmc_next_tx; int lmc_taint_tx; int lmc_txfull; int TxDescriptControlInit; int lmc_lock; TYPE_2__* lmc_txring; TYPE_1__ extra_stats; struct sk_buff** lmc_txq; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_7__ {int length; int status; int buffer1; } ;


 int LMC_CONSOLE_LOG (char*,int ,int) ;
 int LMC_CSR_WRITE (TYPE_3__*,int ,int ) ;
 int LMC_EVENT_LOG (int ,int,int) ;
 int LMC_EVENT_TBUSY1 ;
 int LMC_EVENT_XMT ;
 int LMC_TDES_END_OF_RING ;
 int LMC_TDES_INTERRUPT_ON_COMPLETION ;
 int LMC_TXDESCS ;
 int NETDEV_TX_OK ;
 int csr_txpoll ;
 TYPE_3__* dev_to_sc (struct net_device*) ;
 int lmc_trace (struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_bus (int ) ;

__attribute__((used)) static netdev_tx_t lmc_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
    lmc_softc_t *sc = dev_to_sc(dev);
    u32 flag;
    int entry;
    unsigned long flags;

    lmc_trace(dev, "lmc_start_xmit in");

    spin_lock_irqsave(&sc->lmc_lock, flags);



    entry = sc->lmc_next_tx % LMC_TXDESCS;

    sc->lmc_txq[entry] = skb;
    sc->lmc_txring[entry].buffer1 = virt_to_bus (skb->data);

    LMC_CONSOLE_LOG("xmit", skb->data, skb->len);



    if (sc->lmc_next_tx - sc->lmc_taint_tx < LMC_TXDESCS / 2)
    {

        flag = 0x60000000;
        netif_wake_queue(dev);
    }
    else if (sc->lmc_next_tx - sc->lmc_taint_tx == LMC_TXDESCS / 2)
    {

        flag = 0xe0000000;
        netif_wake_queue(dev);
    }
    else if (sc->lmc_next_tx - sc->lmc_taint_tx < LMC_TXDESCS - 1)
    {

        flag = 0x60000000;
        netif_wake_queue(dev);
    }
    else
    {

        flag = 0xe0000000;
        sc->lmc_txfull = 1;
        netif_stop_queue(dev);
    }
    if (entry == LMC_TXDESCS - 1)
 flag |= LMC_TDES_END_OF_RING;


    flag = sc->lmc_txring[entry].length = (skb->len) | flag |
      sc->TxDescriptControlInit;





    sc->extra_stats.tx_NoCompleteCnt++;
    sc->lmc_next_tx++;


    LMC_EVENT_LOG(LMC_EVENT_XMT, flag, entry);
    sc->lmc_txring[entry].status = 0x80000000;


    LMC_CSR_WRITE (sc, csr_txpoll, 0);

    spin_unlock_irqrestore(&sc->lmc_lock, flags);

    lmc_trace(dev, "lmc_start_xmit_out");
    return NETDEV_TX_OK;
}
