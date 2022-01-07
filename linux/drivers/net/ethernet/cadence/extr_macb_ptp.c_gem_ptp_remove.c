
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct macb {TYPE_1__* pdev; scalar_t__ ptp_clock; } ;
struct TYPE_2__ {int dev; } ;


 int GEM_PTP_TIMER_NAME ;
 int dev_info (int *,char*,int ) ;
 int gem_ptp_clear_timer (struct macb*) ;
 struct macb* netdev_priv (struct net_device*) ;
 int ptp_clock_unregister (scalar_t__) ;

void gem_ptp_remove(struct net_device *ndev)
{
 struct macb *bp = netdev_priv(ndev);

 if (bp->ptp_clock)
  ptp_clock_unregister(bp->ptp_clock);

 gem_ptp_clear_timer(bp);

 dev_info(&bp->pdev->dev, "%s ptp clock unregistered.\n",
   GEM_PTP_TIMER_NAME);
}
