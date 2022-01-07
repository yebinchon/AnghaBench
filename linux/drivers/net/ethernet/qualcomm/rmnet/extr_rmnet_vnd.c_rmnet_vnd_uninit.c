
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_priv {int pcpu_stats; int gro_cells; } ;
struct net_device {int dummy; } ;


 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct rmnet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rmnet_vnd_uninit(struct net_device *dev)
{
 struct rmnet_priv *priv = netdev_priv(dev);

 gro_cells_destroy(&priv->gro_cells);
 free_percpu(priv->pcpu_stats);
}
