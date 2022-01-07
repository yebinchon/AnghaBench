
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int MLXSW_AFA_TRAPDISC_CODE ;
 int MLXSW_AFA_TRAPDISC_FORWARD_ACTION_FORWARD ;
 int MLXSW_AFA_TRAPDISC_SIZE ;
 int MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP ;
 int PTR_ERR (char*) ;
 char* mlxsw_afa_block_append_action (struct mlxsw_afa_block*,int ,int ) ;
 int mlxsw_afa_trapdisc_pack (char*,int ,int ,int ) ;

int mlxsw_afa_block_append_trap_and_forward(struct mlxsw_afa_block *block,
         u16 trap_id)
{
 char *act = mlxsw_afa_block_append_action(block,
        MLXSW_AFA_TRAPDISC_CODE,
        MLXSW_AFA_TRAPDISC_SIZE);

 if (IS_ERR(act))
  return PTR_ERR(act);
 mlxsw_afa_trapdisc_pack(act, MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP,
    MLXSW_AFA_TRAPDISC_FORWARD_ACTION_FORWARD,
    trap_id);
 return 0;
}
