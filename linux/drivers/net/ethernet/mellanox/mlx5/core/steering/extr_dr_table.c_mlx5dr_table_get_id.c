
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5dr_table {int table_id; } ;



u32 mlx5dr_table_get_id(struct mlx5dr_table *tbl)
{
 return tbl->table_id;
}
