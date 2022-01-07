
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ ptp_clock; int time_keep; } ;


 int cancel_delayed_work_sync (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int ptp_clock_unregister (scalar_t__) ;

void fec_ptp_stop(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct fec_enet_private *fep = netdev_priv(ndev);

 cancel_delayed_work_sync(&fep->time_keep);
 if (fep->ptp_clock)
  ptp_clock_unregister(fep->ptp_clock);
}
