
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_fib_node {int dummy; } ;
typedef struct mlxsw_sp_fib_node mlxsw_sp_fib4_entry ;
struct mlxsw_sp {TYPE_2__* bus_info; TYPE_1__* router; } ;
struct fib_entry_notifier_info {int dst_len; int dst; int tb_id; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ aborted; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_fib_node*) ;
 int MLXSW_SP_L3_PROTO_IPV4 ;
 int PTR_ERR (struct mlxsw_sp_fib_node*) ;
 int dev_warn (int ,char*) ;
 struct mlxsw_sp_fib_node* mlxsw_sp_fib4_entry_create (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib_entry_notifier_info const*) ;
 int mlxsw_sp_fib4_entry_destroy (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_fib4_entry_replace (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int) ;
 int mlxsw_sp_fib4_node_entry_link (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int,int) ;
 struct mlxsw_sp_fib_node* mlxsw_sp_fib_node_get (struct mlxsw_sp*,int ,int *,int,int ,int ) ;
 int mlxsw_sp_fib_node_put (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;

__attribute__((used)) static int
mlxsw_sp_router_fib4_add(struct mlxsw_sp *mlxsw_sp,
    const struct fib_entry_notifier_info *fen_info,
    bool replace, bool append)
{
 struct mlxsw_sp_fib4_entry *fib4_entry;
 struct mlxsw_sp_fib_node *fib_node;
 int err;

 if (mlxsw_sp->router->aborted)
  return 0;

 fib_node = mlxsw_sp_fib_node_get(mlxsw_sp, fen_info->tb_id,
      &fen_info->dst, sizeof(fen_info->dst),
      fen_info->dst_len,
      MLXSW_SP_L3_PROTO_IPV4);
 if (IS_ERR(fib_node)) {
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to get FIB node\n");
  return PTR_ERR(fib_node);
 }

 fib4_entry = mlxsw_sp_fib4_entry_create(mlxsw_sp, fib_node, fen_info);
 if (IS_ERR(fib4_entry)) {
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to create FIB entry\n");
  err = PTR_ERR(fib4_entry);
  goto err_fib4_entry_create;
 }

 err = mlxsw_sp_fib4_node_entry_link(mlxsw_sp, fib4_entry, replace,
         append);
 if (err) {
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to link FIB entry to node\n");
  goto err_fib4_node_entry_link;
 }

 mlxsw_sp_fib4_entry_replace(mlxsw_sp, fib4_entry, replace);

 return 0;

err_fib4_node_entry_link:
 mlxsw_sp_fib4_entry_destroy(mlxsw_sp, fib4_entry);
err_fib4_entry_create:
 mlxsw_sp_fib_node_put(mlxsw_sp, fib_node);
 return err;
}
