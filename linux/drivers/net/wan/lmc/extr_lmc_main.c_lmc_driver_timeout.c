
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int name; } ;
struct TYPE_11__ {int tx_ProcTimeout; int tx_tbusy_calls; } ;
struct TYPE_12__ {int lmc_lock; TYPE_3__ extra_stats; TYPE_2__* lmc_device; } ;
typedef TYPE_4__ lmc_softc_t ;
struct TYPE_9__ {int tx_errors; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;


 int LMC_CSR_READ (TYPE_4__*,int ) ;
 int LMC_CSR_WRITE (TYPE_4__*,int ,int) ;
 int LMC_EVENT_LOG (int ,int,int) ;
 int LMC_EVENT_RESET1 ;
 int LMC_EVENT_RESET2 ;
 int LMC_EVENT_XMTPRCTMO ;
 scalar_t__ TX_TIMEOUT ;
 int csr_command ;
 int csr_status ;
 int csr_txpoll ;
 TYPE_4__* dev_to_sc (struct net_device*) ;
 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ jiffies ;
 int lmc_mii_readreg (TYPE_4__*,int ,int) ;
 int lmc_running_reset (struct net_device*) ;
 int lmc_trace (struct net_device*,char*) ;
 int netif_trans_update (struct net_device*) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lmc_driver_timeout(struct net_device *dev)
{
    lmc_softc_t *sc = dev_to_sc(dev);
    u32 csr6;
    unsigned long flags;

    lmc_trace(dev, "lmc_driver_timeout in");

    spin_lock_irqsave(&sc->lmc_lock, flags);

    printk("%s: Xmitter busy|\n", dev->name);

    sc->extra_stats.tx_tbusy_calls++;
    if (jiffies - dev_trans_start(dev) < TX_TIMEOUT)
     goto bug_out;
    LMC_EVENT_LOG(LMC_EVENT_XMTPRCTMO,
                  LMC_CSR_READ (sc, csr_status),
    sc->extra_stats.tx_ProcTimeout);

    lmc_running_reset (dev);

    LMC_EVENT_LOG(LMC_EVENT_RESET1, LMC_CSR_READ (sc, csr_status), 0);
    LMC_EVENT_LOG(LMC_EVENT_RESET2,
                  lmc_mii_readreg (sc, 0, 16),
                  lmc_mii_readreg (sc, 0, 17));


    csr6 = LMC_CSR_READ (sc, csr_command);
    LMC_CSR_WRITE (sc, csr_command, csr6 | 0x0002);
    LMC_CSR_WRITE (sc, csr_command, csr6 | 0x2002);


    LMC_CSR_WRITE (sc, csr_txpoll, 0);

    sc->lmc_device->stats.tx_errors++;
    sc->extra_stats.tx_ProcTimeout++;

    netif_trans_update(dev);

bug_out:

    spin_unlock_irqrestore(&sc->lmc_lock, flags);

    lmc_trace(dev, "lmc_driver_timeout out");


}
