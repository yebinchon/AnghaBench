
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_flow_group {int dummy; } ;
struct TYPE_2__ {struct mlx5_flow_group* vport_rx_group; int ft_offloads; } ;
struct mlx5_eswitch {TYPE_1__ offloads; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_group*) ;
 int MLX5_ESW_MISS_FLOWS ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int PTR_ERR (struct mlx5_flow_group*) ;
 int create_flow_group_in ;
 int end_flow_index ;
 int esw_set_flow_group_source_port (struct mlx5_eswitch*,int *) ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int mlx5_core_warn (int ,char*,int) ;
 struct mlx5_flow_group* mlx5_create_flow_group (int ,int *) ;
 int start_flow_index ;

__attribute__((used)) static int esw_create_vport_rx_group(struct mlx5_eswitch *esw, int nvports)
{
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 struct mlx5_flow_group *g;
 u32 *flow_group_in;
 int err = 0;

 nvports = nvports + MLX5_ESW_MISS_FLOWS;
 flow_group_in = kvzalloc(inlen, GFP_KERNEL);
 if (!flow_group_in)
  return -ENOMEM;


 esw_set_flow_group_source_port(esw, flow_group_in);

 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 0);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, nvports - 1);

 g = mlx5_create_flow_group(esw->offloads.ft_offloads, flow_group_in);

 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  mlx5_core_warn(esw->dev, "Failed to create vport rx group err %d\n", err);
  goto out;
 }

 esw->offloads.vport_rx_group = g;
out:
 kvfree(flow_group_in);
 return err;
}
