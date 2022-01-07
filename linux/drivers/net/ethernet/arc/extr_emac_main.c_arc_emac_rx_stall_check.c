
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct arc_emac_priv {size_t last_rx_bd; scalar_t__ rx_missed_errors; struct arc_emac_bd* rxbd; } ;
struct arc_emac_bd {int info; } ;


 int FOR_EMAC ;
 int arc_emac_restart (struct net_device*) ;
 int le32_to_cpu (int ) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void arc_emac_rx_stall_check(struct net_device *ndev,
        int budget, unsigned int work_done)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);
 struct arc_emac_bd *rxbd;

 if (work_done)
  priv->rx_missed_errors = 0;

 if (priv->rx_missed_errors && budget) {
  rxbd = &priv->rxbd[priv->last_rx_bd];
  if (le32_to_cpu(rxbd->info) & FOR_EMAC) {
   arc_emac_restart(ndev);
   priv->rx_missed_errors = 0;
  }
 }
}
