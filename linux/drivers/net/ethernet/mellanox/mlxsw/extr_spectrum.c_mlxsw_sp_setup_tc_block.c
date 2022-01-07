
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int block; int * driver_block_list; } ;
struct flow_block_cb {int driver_list; } ;
typedef int flow_setup_cb_t ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ;
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int *,struct mlxsw_sp_port*,struct mlxsw_sp_port*,int *) ;
 int flow_block_cb_free (struct flow_block_cb*) ;
 int flow_block_cb_is_busy (int *,struct mlxsw_sp_port*,int *) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int *,struct mlxsw_sp_port*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mlxsw_sp_block_cb_list ;
 int * mlxsw_sp_setup_tc_block_cb_matchall_eg ;
 int * mlxsw_sp_setup_tc_block_cb_matchall_ig ;
 int mlxsw_sp_setup_tc_block_flower_bind (struct mlxsw_sp_port*,struct flow_block_offload*,int) ;
 int mlxsw_sp_setup_tc_block_flower_unbind (struct mlxsw_sp_port*,struct flow_block_offload*,int) ;

__attribute__((used)) static int mlxsw_sp_setup_tc_block(struct mlxsw_sp_port *mlxsw_sp_port,
       struct flow_block_offload *f)
{
 struct flow_block_cb *block_cb;
 flow_setup_cb_t *cb;
 bool ingress;
 int err;

 if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS) {
  cb = mlxsw_sp_setup_tc_block_cb_matchall_ig;
  ingress = 1;
 } else if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS) {
  cb = mlxsw_sp_setup_tc_block_cb_matchall_eg;
  ingress = 0;
 } else {
  return -EOPNOTSUPP;
 }

 f->driver_block_list = &mlxsw_sp_block_cb_list;

 switch (f->command) {
 case 129:
  if (flow_block_cb_is_busy(cb, mlxsw_sp_port,
       &mlxsw_sp_block_cb_list))
   return -EBUSY;

  block_cb = flow_block_cb_alloc(cb, mlxsw_sp_port,
            mlxsw_sp_port, ((void*)0));
  if (IS_ERR(block_cb))
   return PTR_ERR(block_cb);
  err = mlxsw_sp_setup_tc_block_flower_bind(mlxsw_sp_port, f,
         ingress);
  if (err) {
   flow_block_cb_free(block_cb);
   return err;
  }
  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, &mlxsw_sp_block_cb_list);
  return 0;
 case 128:
  mlxsw_sp_setup_tc_block_flower_unbind(mlxsw_sp_port,
            f, ingress);
  block_cb = flow_block_cb_lookup(f->block, cb, mlxsw_sp_port);
  if (!block_cb)
   return -ENOENT;

  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
