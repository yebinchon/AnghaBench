
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct lio {int netdev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int netif_info (struct lio*,int ,int ,char*,int ) ;
 int netif_trans_update (struct net_device*) ;
 int tx_err ;
 int wake_txqs (struct net_device*) ;

__attribute__((used)) static void liquidio_tx_timeout(struct net_device *netdev)
{
 struct lio *lio;

 lio = GET_LIO(netdev);

 netif_info(lio, tx_err, lio->netdev,
     "Transmit timeout tx_dropped:%ld, waking up queues now!!\n",
     netdev->stats.tx_dropped);
 netif_trans_update(netdev);
 wake_txqs(netdev);
}
