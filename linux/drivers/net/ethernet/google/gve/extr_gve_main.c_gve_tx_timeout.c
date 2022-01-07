
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gve_priv {int tx_timeo_cnt; } ;


 int gve_schedule_reset (struct gve_priv*) ;
 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gve_tx_timeout(struct net_device *dev)
{
 struct gve_priv *priv = netdev_priv(dev);

 gve_schedule_reset(priv);
 priv->tx_timeo_cnt++;
}
