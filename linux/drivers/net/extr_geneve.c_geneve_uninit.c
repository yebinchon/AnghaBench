
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int tstats; } ;
struct TYPE_2__ {int dst_cache; } ;
struct geneve_dev {int gro_cells; TYPE_1__ info; } ;


 int dst_cache_destroy (int *) ;
 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct geneve_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void geneve_uninit(struct net_device *dev)
{
 struct geneve_dev *geneve = netdev_priv(dev);

 dst_cache_destroy(&geneve->info.dst_cache);
 gro_cells_destroy(&geneve->gro_cells);
 free_percpu(dev->tstats);
}
