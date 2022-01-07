
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct mlx5_flow_table {TYPE_1__ node; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_prio {int dummy; } ;


 int connect_fts_in_prio (struct mlx5_core_dev*,struct fs_prio*,struct mlx5_flow_table*) ;
 struct mlx5_flow_table* find_prev_chained_ft (struct fs_prio*) ;
 int fs_get_obj (struct fs_prio*,int ) ;

__attribute__((used)) static int connect_prev_fts(struct mlx5_core_dev *dev,
       struct mlx5_flow_table *ft,
       struct fs_prio *prio)
{
 struct mlx5_flow_table *prev_ft;

 prev_ft = find_prev_chained_ft(prio);
 if (prev_ft) {
  struct fs_prio *prev_prio;

  fs_get_obj(prev_prio, prev_ft->node.parent);
  return connect_fts_in_prio(dev, prev_prio, ft);
 }
 return 0;
}
