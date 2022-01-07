
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct mlx5_eswitch {int dev; } ;


 int ENOSPC ;
 struct mlx5_flow_table* ERR_PTR (int ) ;
 int ESW_OFFLOADS_NUM_GROUPS ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 scalar_t__ PTR_ERR (struct mlx5_flow_table*) ;
 int esw_warn (int ,char*,int,int ,int,int) ;
 int get_sz_from_pool (struct mlx5_eswitch*) ;
 struct mlx5_flow_table* mlx5_create_auto_grouped_flow_table (struct mlx5_flow_namespace*,int ,int,int ,int,int ) ;
 int put_sz_to_pool (struct mlx5_eswitch*,int) ;

__attribute__((used)) static struct mlx5_flow_table *
create_next_size_table(struct mlx5_eswitch *esw,
         struct mlx5_flow_namespace *ns,
         u16 table_prio,
         int level,
         u32 flags)
{
 struct mlx5_flow_table *fdb;
 int sz;

 sz = get_sz_from_pool(esw);
 if (!sz)
  return ERR_PTR(-ENOSPC);

 fdb = mlx5_create_auto_grouped_flow_table(ns,
        table_prio,
        sz,
        ESW_OFFLOADS_NUM_GROUPS,
        level,
        flags);
 if (IS_ERR(fdb)) {
  esw_warn(esw->dev, "Failed to create FDB Table err %d (table prio: %d, level: %d, size: %d)\n",
    (int)PTR_ERR(fdb), table_prio, level, sz);
  put_sz_to_pool(esw, sz);
 }

 return fdb;
}
