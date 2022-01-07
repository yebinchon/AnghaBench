
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_flow_steering {TYPE_1__* fdb_root_ns; struct mlx5_flow_namespace** fdb_sub_ns; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef struct mlx5_flow_namespace fs_prio ;
struct TYPE_4__ {struct mlx5_flow_namespace ns; } ;


 int ENOMEM ;
 int FDB_BYPASS_PATH ;
 int FDB_FAST_PATH ;
 int FDB_MAX_CHAIN ;
 int FDB_MAX_PRIO ;
 int FDB_SLOW_PATH ;
 int FS_FT_FDB ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_namespace*) ;
 int MLX5_FLOW_TABLE_MISS_ACTION_DEF ;
 int PTR_ERR (struct mlx5_flow_namespace*) ;
 int cleanup_root_ns (TYPE_1__*) ;
 TYPE_1__* create_root_ns (struct mlx5_flow_steering*,int ) ;
 struct mlx5_flow_namespace* fs_create_namespace (struct mlx5_flow_namespace*,int ) ;
 struct mlx5_flow_namespace* fs_create_prio (struct mlx5_flow_namespace*,int,int) ;
 struct mlx5_flow_namespace* fs_create_prio_chained (struct mlx5_flow_namespace*,int ,int) ;
 int kfree (struct mlx5_flow_namespace**) ;
 struct mlx5_flow_namespace** kzalloc (int,int ) ;
 int set_prio_attrs (TYPE_1__*) ;

__attribute__((used)) static int init_fdb_root_ns(struct mlx5_flow_steering *steering)
{
 struct mlx5_flow_namespace *ns;
 struct fs_prio *maj_prio;
 struct fs_prio *min_prio;
 int levels;
 int chain;
 int prio;
 int err;

 steering->fdb_root_ns = create_root_ns(steering, FS_FT_FDB);
 if (!steering->fdb_root_ns)
  return -ENOMEM;

 steering->fdb_sub_ns = kzalloc(sizeof(steering->fdb_sub_ns) *
           (FDB_MAX_CHAIN + 1), GFP_KERNEL);
 if (!steering->fdb_sub_ns)
  return -ENOMEM;

 maj_prio = fs_create_prio(&steering->fdb_root_ns->ns, FDB_BYPASS_PATH,
      1);
 if (IS_ERR(maj_prio)) {
  err = PTR_ERR(maj_prio);
  goto out_err;
 }

 levels = 2 * FDB_MAX_PRIO * (FDB_MAX_CHAIN + 1);
 maj_prio = fs_create_prio_chained(&steering->fdb_root_ns->ns,
       FDB_FAST_PATH,
       levels);
 if (IS_ERR(maj_prio)) {
  err = PTR_ERR(maj_prio);
  goto out_err;
 }

 for (chain = 0; chain <= FDB_MAX_CHAIN; chain++) {
  ns = fs_create_namespace(maj_prio, MLX5_FLOW_TABLE_MISS_ACTION_DEF);
  if (IS_ERR(ns)) {
   err = PTR_ERR(ns);
   goto out_err;
  }

  for (prio = 0; prio < FDB_MAX_PRIO * (chain + 1); prio++) {
   min_prio = fs_create_prio(ns, prio, 2);
   if (IS_ERR(min_prio)) {
    err = PTR_ERR(min_prio);
    goto out_err;
   }
  }

  steering->fdb_sub_ns[chain] = ns;
 }

 maj_prio = fs_create_prio(&steering->fdb_root_ns->ns, FDB_SLOW_PATH, 1);
 if (IS_ERR(maj_prio)) {
  err = PTR_ERR(maj_prio);
  goto out_err;
 }

 set_prio_attrs(steering->fdb_root_ns);
 return 0;

out_err:
 cleanup_root_ns(steering->fdb_root_ns);
 kfree(steering->fdb_sub_ns);
 steering->fdb_sub_ns = ((void*)0);
 steering->fdb_root_ns = ((void*)0);
 return err;
}
