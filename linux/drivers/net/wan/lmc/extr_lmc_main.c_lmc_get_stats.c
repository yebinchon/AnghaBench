
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device_stats {int rx_missed_errors; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* lmc_device; int lmc_lock; } ;
typedef TYPE_2__ lmc_softc_t ;
struct TYPE_5__ {struct net_device_stats stats; } ;


 int LMC_CSR_READ (TYPE_2__*,int ) ;
 int csr_missed_frames ;
 TYPE_2__* dev_to_sc (struct net_device*) ;
 int lmc_trace (struct net_device*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct net_device_stats *lmc_get_stats(struct net_device *dev)
{
    lmc_softc_t *sc = dev_to_sc(dev);
    unsigned long flags;

    lmc_trace(dev, "lmc_get_stats in");

    spin_lock_irqsave(&sc->lmc_lock, flags);

    sc->lmc_device->stats.rx_missed_errors += LMC_CSR_READ(sc, csr_missed_frames) & 0xffff;

    spin_unlock_irqrestore(&sc->lmc_lock, flags);

    lmc_trace(dev, "lmc_get_stats out");

    return &sc->lmc_device->stats;
}
