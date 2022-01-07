
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_flow_table {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int children; } ;
struct fs_prio {TYPE_1__ node; } ;
struct TYPE_4__ {int modify_root; } ;


 scalar_t__ MLX5_CAP_FLOWTABLE (struct mlx5_core_dev*,int ) ;
 int connect_fwd_rules (struct mlx5_core_dev*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;
 int connect_prev_fts (struct mlx5_core_dev*,struct mlx5_flow_table*,struct fs_prio*) ;
 struct mlx5_flow_table* find_next_chained_ft (struct fs_prio*) ;
 TYPE_2__ flow_table_properties_nic_receive ;
 scalar_t__ list_empty (int *) ;
 int update_root_ft_create (struct mlx5_flow_table*,struct fs_prio*) ;

__attribute__((used)) static int connect_flow_table(struct mlx5_core_dev *dev, struct mlx5_flow_table *ft,
         struct fs_prio *prio)
{
 struct mlx5_flow_table *next_ft;
 int err = 0;



 if (list_empty(&prio->node.children)) {
  err = connect_prev_fts(dev, ft, prio);
  if (err)
   return err;

  next_ft = find_next_chained_ft(prio);
  err = connect_fwd_rules(dev, ft, next_ft);
  if (err)
   return err;
 }

 if (MLX5_CAP_FLOWTABLE(dev,
          flow_table_properties_nic_receive.modify_root))
  err = update_root_ft_create(ft, prio);
 return err;
}
