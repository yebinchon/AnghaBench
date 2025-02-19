
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_afa_counter {int counter_index; } ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (struct mlxsw_afa_counter*) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct mlxsw_afa_counter*) ;
 int mlxsw_afa_block_append_allocated_counter (struct mlxsw_afa_block*,int ) ;
 struct mlxsw_afa_counter* mlxsw_afa_counter_create (struct mlxsw_afa_block*) ;
 int mlxsw_afa_counter_destroy (struct mlxsw_afa_block*,struct mlxsw_afa_counter*) ;

int mlxsw_afa_block_append_counter(struct mlxsw_afa_block *block,
       u32 *p_counter_index,
       struct netlink_ext_ack *extack)
{
 struct mlxsw_afa_counter *counter;
 u32 counter_index;
 int err;

 counter = mlxsw_afa_counter_create(block);
 if (IS_ERR(counter)) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot create count action");
  return PTR_ERR(counter);
 }
 counter_index = counter->counter_index;

 err = mlxsw_afa_block_append_allocated_counter(block, counter_index);
 if (err) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot append count action");
  goto err_append_allocated_counter;
 }
 if (p_counter_index)
  *p_counter_index = counter_index;
 return 0;

err_append_allocated_counter:
 mlxsw_afa_counter_destroy(block, counter);
 return err;
}
