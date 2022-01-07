
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_hca_vport_context {int sys_image_guid; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mlx5_hca_vport_context*) ;
 struct mlx5_hca_vport_context* kzalloc (int,int ) ;
 int mlx5_query_hca_vport_context (struct mlx5_core_dev*,int ,int,int ,struct mlx5_hca_vport_context*) ;

int mlx5_query_hca_vport_system_image_guid(struct mlx5_core_dev *dev,
        u64 *sys_image_guid)
{
 struct mlx5_hca_vport_context *rep;
 int err;

 rep = kzalloc(sizeof(*rep), GFP_KERNEL);
 if (!rep)
  return -ENOMEM;

 err = mlx5_query_hca_vport_context(dev, 0, 1, 0, rep);
 if (!err)
  *sys_image_guid = rep->sys_image_guid;

 kfree(rep);
 return err;
}
