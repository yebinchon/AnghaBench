
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int * eg_acl_block; int * ing_acl_block; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct flow_block_offload {int block; } ;
struct flow_block_cb {int driver_list; } ;


 int flow_block_cb_decref (struct flow_block_cb*) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct mlxsw_sp*) ;
 struct mlxsw_sp_acl_block* flow_block_cb_priv (struct flow_block_cb*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_del (int *) ;
 int mlxsw_sp_acl_block_unbind (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int) ;
 int mlxsw_sp_setup_tc_block_cb_flower ;

__attribute__((used)) static void
mlxsw_sp_setup_tc_block_flower_unbind(struct mlxsw_sp_port *mlxsw_sp_port,
          struct flow_block_offload *f, bool ingress)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_acl_block *acl_block;
 struct flow_block_cb *block_cb;
 int err;

 block_cb = flow_block_cb_lookup(f->block,
     mlxsw_sp_setup_tc_block_cb_flower,
     mlxsw_sp);
 if (!block_cb)
  return;

 if (ingress)
  mlxsw_sp_port->ing_acl_block = ((void*)0);
 else
  mlxsw_sp_port->eg_acl_block = ((void*)0);

 acl_block = flow_block_cb_priv(block_cb);
 err = mlxsw_sp_acl_block_unbind(mlxsw_sp, acl_block,
     mlxsw_sp_port, ingress);
 if (!err && !flow_block_cb_decref(block_cb)) {
  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
 }
}
