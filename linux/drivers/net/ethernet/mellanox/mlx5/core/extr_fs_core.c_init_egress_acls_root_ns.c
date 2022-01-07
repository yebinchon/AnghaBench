
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {int * esw_egress_root_ns; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cleanup_root_ns (int ) ;
 int init_egress_acl_root_ns (struct mlx5_flow_steering*,int) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int mlx5_eswitch_get_total_vports (struct mlx5_core_dev*) ;

__attribute__((used)) static int init_egress_acls_root_ns(struct mlx5_core_dev *dev)
{
 struct mlx5_flow_steering *steering = dev->priv.steering;
 int total_vports = mlx5_eswitch_get_total_vports(dev);
 int err;
 int i;

 steering->esw_egress_root_ns =
   kcalloc(total_vports,
    sizeof(*steering->esw_egress_root_ns),
    GFP_KERNEL);
 if (!steering->esw_egress_root_ns)
  return -ENOMEM;

 for (i = 0; i < total_vports; i++) {
  err = init_egress_acl_root_ns(steering, i);
  if (err)
   goto cleanup_root_ns;
 }

 return 0;

cleanup_root_ns:
 for (i--; i >= 0; i--)
  cleanup_root_ns(steering->esw_egress_root_ns[i]);
 kfree(steering->esw_egress_root_ns);
 steering->esw_egress_root_ns = ((void*)0);
 return err;
}
