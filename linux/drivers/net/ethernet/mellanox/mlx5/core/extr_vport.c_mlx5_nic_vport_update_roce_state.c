
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_vport_roce_state { ____Placeholder_mlx5_vport_roce_state } mlx5_vport_roce_state ;
struct TYPE_4__ {int roce_en; } ;
struct TYPE_3__ {int roce_en; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_2__ field_select ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 int modify_nic_vport_context_in ;
 TYPE_1__ nic_vport_context ;

__attribute__((used)) static int mlx5_nic_vport_update_roce_state(struct mlx5_core_dev *mdev,
         enum mlx5_vport_roce_state state)
{
 void *in;
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 int err;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_nic_vport_context_in, in, field_select.roce_en, 1);
 MLX5_SET(modify_nic_vport_context_in, in, nic_vport_context.roce_en,
   state);

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 kvfree(in);

 return err;
}
