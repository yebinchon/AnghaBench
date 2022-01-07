
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_dropped; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {scalar_t__ last_rx_bd; struct arc_emac_bd* rxbd; int txbd; scalar_t__ txbd_dirty; scalar_t__ txbd_curr; } ;
struct arc_emac_bd {int info; } ;


 unsigned int EMAC_BUFFER_SIZE ;
 int EN_MASK ;
 int ERR_MASK ;
 unsigned int FOR_EMAC ;
 int RXINT_MASK ;
 int RX_BD_NUM ;
 int R_CTRL ;
 int R_ENABLE ;
 int TXINT_MASK ;
 int TX_RING_SZ ;
 int arc_free_tx_queue (struct net_device*) ;
 int arc_reg_clr (struct arc_emac_priv*,int ,int) ;
 int arc_reg_or (struct arc_emac_priv*,int ,int) ;
 int arc_reg_set (struct arc_emac_priv*,int ,int) ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int memset (int ,int ,int ) ;
 scalar_t__ net_ratelimit () ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static void arc_emac_restart(struct net_device *ndev)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 int i;

 if (net_ratelimit())
  netdev_warn(ndev, "restarting stalled EMAC\n");

 netif_stop_queue(ndev);


 arc_reg_clr(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);


 arc_reg_clr(priv, R_CTRL, EN_MASK);


 arc_free_tx_queue(ndev);


 priv->txbd_curr = 0;
 priv->txbd_dirty = 0;
 memset(priv->txbd, 0, TX_RING_SZ);

 for (i = 0; i < RX_BD_NUM; i++) {
  struct arc_emac_bd *rxbd = &priv->rxbd[i];
  unsigned int info = le32_to_cpu(rxbd->info);

  if (!(info & FOR_EMAC)) {
   stats->rx_errors++;
   stats->rx_dropped++;
  }

  rxbd->info = cpu_to_le32(FOR_EMAC | EMAC_BUFFER_SIZE);
 }
 priv->last_rx_bd = 0;


 wmb();


 arc_reg_set(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);


 arc_reg_or(priv, R_CTRL, EN_MASK);

 netif_start_queue(ndev);
}
