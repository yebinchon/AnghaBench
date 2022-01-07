
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_steering {int dev; } ;
struct mlx5_flow_namespace {int node; } ;
struct mlx5_flow_root_namespace {int table_type; int chain_lock; struct mlx5_flow_namespace ns; int underlay_qpns; struct mlx5_flow_cmds const* cmds; int dev; } ;
struct mlx5_flow_cmds {int dummy; } ;
typedef enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;


 int FS_FT_NIC_RX ;
 int FS_FT_NIC_TX ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_ACCEL_IPSEC_CAP_DEVICE ;
 int fs_init_namespace (struct mlx5_flow_namespace*) ;
 struct mlx5_flow_root_namespace* kzalloc (int,int ) ;
 int mlx5_accel_ipsec_device_caps (int ) ;
 struct mlx5_flow_cmds* mlx5_fs_cmd_get_default (int) ;
 struct mlx5_flow_cmds* mlx5_fs_cmd_get_default_ipsec_fpga_cmds (int) ;
 int mutex_init (int *) ;
 int tree_add_node (int *,int *) ;
 int tree_init_node (int *,int *,int *) ;

__attribute__((used)) static struct mlx5_flow_root_namespace
*create_root_ns(struct mlx5_flow_steering *steering,
  enum fs_flow_table_type table_type)
{
 const struct mlx5_flow_cmds *cmds = mlx5_fs_cmd_get_default(table_type);
 struct mlx5_flow_root_namespace *root_ns;
 struct mlx5_flow_namespace *ns;

 if (mlx5_accel_ipsec_device_caps(steering->dev) & MLX5_ACCEL_IPSEC_CAP_DEVICE &&
     (table_type == FS_FT_NIC_RX || table_type == FS_FT_NIC_TX))
  cmds = mlx5_fs_cmd_get_default_ipsec_fpga_cmds(table_type);


 root_ns = kzalloc(sizeof(*root_ns), GFP_KERNEL);
 if (!root_ns)
  return ((void*)0);

 root_ns->dev = steering->dev;
 root_ns->table_type = table_type;
 root_ns->cmds = cmds;

 INIT_LIST_HEAD(&root_ns->underlay_qpns);

 ns = &root_ns->ns;
 fs_init_namespace(ns);
 mutex_init(&root_ns->chain_lock);
 tree_init_node(&ns->node, ((void*)0), ((void*)0));
 tree_add_node(&ns->node, ((void*)0));

 return root_ns;
}
