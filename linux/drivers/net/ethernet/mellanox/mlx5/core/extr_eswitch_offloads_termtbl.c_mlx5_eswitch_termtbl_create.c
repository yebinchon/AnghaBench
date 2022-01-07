
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_termtbl_handle {int termtbl; int rule; int dest; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct mlx5_flow_act {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int FDB_SLOW_PATH ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_FLOW_NAMESPACE_FDB ;
 int MLX5_FLOW_TABLE_TERMINATION ;
 int esw_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_add_flow_rules (int ,struct mlx5_flow_spec const*,struct mlx5_flow_act*,int *,int) ;
 int mlx5_create_auto_grouped_flow_table (struct mlx5_flow_namespace*,int,int,int,int ,int) ;
 int mlx5_destroy_flow_table (int ) ;
 struct mlx5_flow_namespace* mlx5_get_flow_namespace (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static int
mlx5_eswitch_termtbl_create(struct mlx5_core_dev *dev,
       struct mlx5_termtbl_handle *tt,
       struct mlx5_flow_act *flow_act)
{
 static const struct mlx5_flow_spec spec = {};
 struct mlx5_flow_namespace *root_ns;
 int prio, flags;
 int err;

 root_ns = mlx5_get_flow_namespace(dev, MLX5_FLOW_NAMESPACE_FDB);
 if (!root_ns) {
  esw_warn(dev, "Failed to get FDB flow namespace\n");
  return -EOPNOTSUPP;
 }




 prio = FDB_SLOW_PATH;
 flags = MLX5_FLOW_TABLE_TERMINATION;
 tt->termtbl = mlx5_create_auto_grouped_flow_table(root_ns, prio, 1, 1,
         0, flags);
 if (IS_ERR(tt->termtbl)) {
  esw_warn(dev, "Failed to create termination table\n");
  return -EOPNOTSUPP;
 }

 tt->rule = mlx5_add_flow_rules(tt->termtbl, &spec, flow_act,
           &tt->dest, 1);

 if (IS_ERR(tt->rule)) {
  esw_warn(dev, "Failed to create termination table rule\n");
  goto add_flow_err;
 }
 return 0;

add_flow_err:
 err = mlx5_destroy_flow_table(tt->termtbl);
 if (err)
  esw_warn(dev, "Failed to destroy termination table\n");

 return -EOPNOTSUPP;
}
