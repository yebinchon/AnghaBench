
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_block {int finished; int cur_set; } ;


 int EINVAL ;
 int MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM ;
 int mlxsw_afa_set_goto_set (int ,int ,int ) ;

int mlxsw_afa_block_terminate(struct mlxsw_afa_block *block)
{
 if (block->finished)
  return -EINVAL;
 mlxsw_afa_set_goto_set(block->cur_set,
          MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM, 0);
 block->finished = 1;
 return 0;
}
