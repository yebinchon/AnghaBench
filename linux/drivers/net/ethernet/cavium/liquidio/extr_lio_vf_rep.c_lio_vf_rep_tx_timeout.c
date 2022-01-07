
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
lio_vf_rep_tx_timeout(struct net_device *ndev)
{
 netif_trans_update(ndev);

 netif_wake_queue(ndev);
}
