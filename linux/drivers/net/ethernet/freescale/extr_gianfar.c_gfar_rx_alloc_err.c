
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_extra_stats {int rx_alloc_err; } ;
struct gfar_private {struct gfar_extra_stats extra_stats; } ;
struct gfar_priv_rx_q {int ndev; } ;


 int atomic64_inc (int *) ;
 int netdev_err (int ,char*) ;
 struct gfar_private* netdev_priv (int ) ;

__attribute__((used)) static void gfar_rx_alloc_err(struct gfar_priv_rx_q *rx_queue)
{
 struct gfar_private *priv = netdev_priv(rx_queue->ndev);
 struct gfar_extra_stats *estats = &priv->extra_stats;

 netdev_err(rx_queue->ndev, "Can't alloc RX buffers\n");
 atomic64_inc(&estats->rx_alloc_err);
}
