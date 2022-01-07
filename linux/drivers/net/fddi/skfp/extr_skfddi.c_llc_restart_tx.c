
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int DriverLock; } ;
struct s_smc {TYPE_1__ os; } ;
typedef TYPE_1__ skfddi_priv ;


 int netif_start_queue (int ) ;
 int pr_debug (char*) ;
 int send_queued_packets (struct s_smc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void llc_restart_tx(struct s_smc *smc)
{
 skfddi_priv *bp = &smc->os;

 pr_debug("[llc_restart_tx]\n");


 spin_unlock(&bp->DriverLock);
 send_queued_packets(smc);
 spin_lock(&bp->DriverLock);
 netif_start_queue(bp->dev);

}
