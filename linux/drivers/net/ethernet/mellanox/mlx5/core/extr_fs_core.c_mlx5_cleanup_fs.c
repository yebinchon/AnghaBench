
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {int fgs_cache; int ftes_cache; int * egress_root_ns; int * rdma_rx_root_ns; int * sniffer_tx_root_ns; int * sniffer_rx_root_ns; struct mlx5_flow_steering* fdb_sub_ns; int * fdb_root_ns; int * root_ns; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int cleanup_egress_acls_root_ns (struct mlx5_core_dev*) ;
 int cleanup_ingress_acls_root_ns (struct mlx5_core_dev*) ;
 int cleanup_root_ns (int *) ;
 int kfree (struct mlx5_flow_steering*) ;
 int kmem_cache_destroy (int ) ;
 int mlx5_cleanup_fc_stats (struct mlx5_core_dev*) ;

void mlx5_cleanup_fs(struct mlx5_core_dev *dev)
{
 struct mlx5_flow_steering *steering = dev->priv.steering;

 cleanup_root_ns(steering->root_ns);
 cleanup_egress_acls_root_ns(dev);
 cleanup_ingress_acls_root_ns(dev);
 cleanup_root_ns(steering->fdb_root_ns);
 steering->fdb_root_ns = ((void*)0);
 kfree(steering->fdb_sub_ns);
 steering->fdb_sub_ns = ((void*)0);
 cleanup_root_ns(steering->sniffer_rx_root_ns);
 cleanup_root_ns(steering->sniffer_tx_root_ns);
 cleanup_root_ns(steering->rdma_rx_root_ns);
 cleanup_root_ns(steering->egress_root_ns);
 mlx5_cleanup_fc_stats(dev);
 kmem_cache_destroy(steering->ftes_cache);
 kmem_cache_destroy(steering->fgs_cache);
 kfree(steering);
}
