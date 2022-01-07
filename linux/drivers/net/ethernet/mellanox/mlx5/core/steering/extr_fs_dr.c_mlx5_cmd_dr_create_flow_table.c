
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5dr_table {int dummy; } ;
struct TYPE_5__ {struct mlx5dr_table* dr_table; } ;
struct mlx5_flow_table {TYPE_2__ fs_dr_table; int id; int level; int flags; } ;
struct TYPE_4__ {int dr_domain; } ;
struct mlx5_flow_root_namespace {int dev; TYPE_1__ fs_dr_domain; } ;
struct TYPE_6__ {int (* create_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,unsigned int,struct mlx5_flow_table*) ;} ;


 int EINVAL ;
 int mlx5_core_err (int ,char*) ;
 scalar_t__ mlx5_dr_is_fw_table (int ) ;
 TYPE_3__* mlx5_fs_cmd_get_fw_cmds () ;
 struct mlx5dr_table* mlx5dr_table_create (int ,int ) ;
 int mlx5dr_table_destroy (struct mlx5dr_table*) ;
 int mlx5dr_table_get_id (struct mlx5dr_table*) ;
 int set_miss_action (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,unsigned int,struct mlx5_flow_table*) ;

__attribute__((used)) static int mlx5_cmd_dr_create_flow_table(struct mlx5_flow_root_namespace *ns,
      struct mlx5_flow_table *ft,
      unsigned int log_size,
      struct mlx5_flow_table *next_ft)
{
 struct mlx5dr_table *tbl;
 int err;

 if (mlx5_dr_is_fw_table(ft->flags))
  return mlx5_fs_cmd_get_fw_cmds()->create_flow_table(ns, ft,
            log_size,
            next_ft);

 tbl = mlx5dr_table_create(ns->fs_dr_domain.dr_domain,
      ft->level);
 if (!tbl) {
  mlx5_core_err(ns->dev, "Failed creating dr flow_table\n");
  return -EINVAL;
 }

 ft->fs_dr_table.dr_table = tbl;
 ft->id = mlx5dr_table_get_id(tbl);

 if (next_ft) {
  err = set_miss_action(ns, ft, next_ft);
  if (err) {
   mlx5dr_table_destroy(tbl);
   ft->fs_dr_table.dr_table = ((void*)0);
   return err;
  }
 }

 return 0;
}
