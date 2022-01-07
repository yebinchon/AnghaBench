
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int MLXSW_AFA_TRAPDISC_CODE ;
 int MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD ;
 int MLXSW_AFA_TRAPDISC_SIZE ;
 int MLXSW_AFA_TRAPDISC_TRAP_ACTION_NOP ;
 int PTR_ERR (char*) ;
 char* mlxsw_afa_block_append_action (struct mlxsw_afa_block*,int ,int ) ;
 int mlxsw_afa_trapdisc_pack (char*,int ,int ,int ) ;

int mlxsw_afa_block_append_drop(struct mlxsw_afa_block *block)
{
 char *act = mlxsw_afa_block_append_action(block,
        MLXSW_AFA_TRAPDISC_CODE,
        MLXSW_AFA_TRAPDISC_SIZE);

 if (IS_ERR(act))
  return PTR_ERR(act);
 mlxsw_afa_trapdisc_pack(act, MLXSW_AFA_TRAPDISC_TRAP_ACTION_NOP,
    MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD, 0);
 return 0;
}
