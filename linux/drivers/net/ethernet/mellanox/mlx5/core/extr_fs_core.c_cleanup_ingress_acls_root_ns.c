
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {int * esw_ingress_root_ns; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int cleanup_root_ns (int ) ;
 int kfree (int *) ;
 int mlx5_eswitch_get_total_vports (struct mlx5_core_dev*) ;

__attribute__((used)) static void cleanup_ingress_acls_root_ns(struct mlx5_core_dev *dev)
{
 struct mlx5_flow_steering *steering = dev->priv.steering;
 int i;

 if (!steering->esw_ingress_root_ns)
  return;

 for (i = 0; i < mlx5_eswitch_get_total_vports(dev); i++)
  cleanup_root_ns(steering->esw_ingress_root_ns[i]);

 kfree(steering->esw_ingress_root_ns);
 steering->esw_ingress_root_ns = ((void*)0);
}
