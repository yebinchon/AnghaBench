
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct fec_enet_private {int tx_timeout_work; } ;


 int fec_dump (struct net_device*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
fec_timeout(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 fec_dump(ndev);

 ndev->stats.tx_errors++;

 schedule_work(&fep->tx_timeout_work);
}
