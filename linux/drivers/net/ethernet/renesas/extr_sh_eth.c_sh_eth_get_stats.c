
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* cd; int is_opened; } ;
struct net_device_stats {int tx_carrier_errors; int collisions; int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {scalar_t__ cexcr; scalar_t__ no_tx_cntrs; } ;


 int CDCR ;
 int CEECR ;
 int CERCR ;
 int CNDCR ;
 int LCCR ;
 int TROCR ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_update_stat (struct net_device*,int *,int ) ;

__attribute__((used)) static struct net_device_stats *sh_eth_get_stats(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 if (mdp->cd->no_tx_cntrs)
  return &ndev->stats;

 if (!mdp->is_opened)
  return &ndev->stats;

 sh_eth_update_stat(ndev, &ndev->stats.tx_dropped, TROCR);
 sh_eth_update_stat(ndev, &ndev->stats.collisions, CDCR);
 sh_eth_update_stat(ndev, &ndev->stats.tx_carrier_errors, LCCR);

 if (mdp->cd->cexcr) {
  sh_eth_update_stat(ndev, &ndev->stats.tx_carrier_errors,
       CERCR);
  sh_eth_update_stat(ndev, &ndev->stats.tx_carrier_errors,
       CEECR);
 } else {
  sh_eth_update_stat(ndev, &ndev->stats.tx_carrier_errors,
       CNDCR);
 }

 return &ndev->stats;
}
