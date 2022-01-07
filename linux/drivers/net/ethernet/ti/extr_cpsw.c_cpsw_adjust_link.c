
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int dummy; } ;


 int _cpsw_adjust_link ;
 scalar_t__ cpsw_need_resplit (struct cpsw_common*) ;
 int cpsw_split_res (struct cpsw_common*) ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_priv*,int*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static void cpsw_adjust_link(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 bool link = 0;

 for_each_slave(priv, _cpsw_adjust_link, priv, &link);

 if (link) {
  if (cpsw_need_resplit(cpsw))
   cpsw_split_res(cpsw);

  netif_carrier_on(ndev);
  if (netif_running(ndev))
   netif_tx_wake_all_queues(ndev);
 } else {
  netif_carrier_off(ndev);
  netif_tx_stop_all_queues(ndev);
 }
}
