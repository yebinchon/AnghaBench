
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int affiliation; } ;
struct TYPE_3__ {int affiliation_criteria; int affiliated_vhca_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int affiliate_nic_vport_criteria ;
 TYPE_2__ field_select ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 int mlx5_nic_vport_disable_roce (struct mlx5_core_dev*) ;
 int mlx5_nic_vport_enable_roce (struct mlx5_core_dev*) ;
 int modify_nic_vport_context_in ;
 TYPE_1__ nic_vport_context ;
 int vhca_id ;

int mlx5_nic_vport_affiliate_multiport(struct mlx5_core_dev *master_mdev,
           struct mlx5_core_dev *port_mdev)
{
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 void *in;
 int err;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 err = mlx5_nic_vport_enable_roce(port_mdev);
 if (err)
  goto free;

 MLX5_SET(modify_nic_vport_context_in, in, field_select.affiliation, 1);
 MLX5_SET(modify_nic_vport_context_in, in,
   nic_vport_context.affiliated_vhca_id,
   MLX5_CAP_GEN(master_mdev, vhca_id));
 MLX5_SET(modify_nic_vport_context_in, in,
   nic_vport_context.affiliation_criteria,
   MLX5_CAP_GEN(port_mdev, affiliate_nic_vport_criteria));

 err = mlx5_modify_nic_vport_context(port_mdev, in, inlen);
 if (err)
  mlx5_nic_vport_disable_roce(port_mdev);

free:
 kvfree(in);
 return err;
}
