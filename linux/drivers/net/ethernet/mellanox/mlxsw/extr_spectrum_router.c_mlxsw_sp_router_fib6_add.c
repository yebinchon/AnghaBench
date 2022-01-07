
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlxsw_sp_fib_node {int dummy; } ;
typedef struct mlxsw_sp_fib_node mlxsw_sp_fib6_entry ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_8__ {int plen; int addr; } ;
struct TYPE_6__ {scalar_t__ plen; } ;
struct fib6_info {TYPE_4__ fib6_dst; TYPE_3__* fib6_table; TYPE_2__ fib6_src; } ;
struct TYPE_7__ {int tb6_id; } ;
struct TYPE_5__ {scalar_t__ aborted; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mlxsw_sp_fib_node*) ;
 int MLXSW_SP_L3_PROTO_IPV6 ;
 int PTR_ERR (struct mlxsw_sp_fib_node*) ;
 struct mlxsw_sp_fib_node* mlxsw_sp_fib6_entry_create (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib6_info**,unsigned int) ;
 int mlxsw_sp_fib6_entry_destroy (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_fib6_entry_nexthop_add (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib6_info**,unsigned int) ;
 int mlxsw_sp_fib6_entry_replace (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int) ;
 int mlxsw_sp_fib6_node_entry_link (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int*) ;
 struct mlxsw_sp_fib_node* mlxsw_sp_fib6_node_mp_entry_find (struct mlxsw_sp_fib_node*,struct fib6_info*,int) ;
 scalar_t__ mlxsw_sp_fib6_rt_should_ignore (struct fib6_info*) ;
 struct mlxsw_sp_fib_node* mlxsw_sp_fib_node_get (struct mlxsw_sp*,int ,int *,int,int ,int ) ;
 int mlxsw_sp_fib_node_put (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;

__attribute__((used)) static int mlxsw_sp_router_fib6_add(struct mlxsw_sp *mlxsw_sp,
        struct fib6_info **rt_arr,
        unsigned int nrt6, bool replace)
{
 struct mlxsw_sp_fib6_entry *fib6_entry;
 struct mlxsw_sp_fib_node *fib_node;
 struct fib6_info *rt = rt_arr[0];
 int err;

 if (mlxsw_sp->router->aborted)
  return 0;

 if (rt->fib6_src.plen)
  return -EINVAL;

 if (mlxsw_sp_fib6_rt_should_ignore(rt))
  return 0;

 fib_node = mlxsw_sp_fib_node_get(mlxsw_sp, rt->fib6_table->tb6_id,
      &rt->fib6_dst.addr,
      sizeof(rt->fib6_dst.addr),
      rt->fib6_dst.plen,
      MLXSW_SP_L3_PROTO_IPV6);
 if (IS_ERR(fib_node))
  return PTR_ERR(fib_node);




 fib6_entry = mlxsw_sp_fib6_node_mp_entry_find(fib_node, rt, replace);
 if (fib6_entry) {
  err = mlxsw_sp_fib6_entry_nexthop_add(mlxsw_sp, fib6_entry,
            rt_arr, nrt6);
  if (err)
   goto err_fib6_entry_nexthop_add;
  return 0;
 }

 fib6_entry = mlxsw_sp_fib6_entry_create(mlxsw_sp, fib_node, rt_arr,
      nrt6);
 if (IS_ERR(fib6_entry)) {
  err = PTR_ERR(fib6_entry);
  goto err_fib6_entry_create;
 }

 err = mlxsw_sp_fib6_node_entry_link(mlxsw_sp, fib6_entry, &replace);
 if (err)
  goto err_fib6_node_entry_link;

 mlxsw_sp_fib6_entry_replace(mlxsw_sp, fib6_entry, replace);

 return 0;

err_fib6_node_entry_link:
 mlxsw_sp_fib6_entry_destroy(mlxsw_sp, fib6_entry);
err_fib6_entry_create:
err_fib6_entry_nexthop_add:
 mlxsw_sp_fib_node_put(mlxsw_sp, fib_node);
 return err;
}
