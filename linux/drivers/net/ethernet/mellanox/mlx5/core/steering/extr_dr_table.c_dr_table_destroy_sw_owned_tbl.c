
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {int table_type; int table_id; TYPE_1__* dmn; } ;
struct TYPE_2__ {int mdev; } ;


 int mlx5dr_cmd_destroy_flow_table (int ,int ,int ) ;

__attribute__((used)) static int dr_table_destroy_sw_owned_tbl(struct mlx5dr_table *tbl)
{
 return mlx5dr_cmd_destroy_flow_table(tbl->dmn->mdev,
          tbl->table_id,
          tbl->table_type);
}
