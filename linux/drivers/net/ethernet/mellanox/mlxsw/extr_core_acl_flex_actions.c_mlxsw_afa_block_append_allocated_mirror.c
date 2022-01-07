
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int MLXSW_AFA_TRAPDISC_CODE ;
 int MLXSW_AFA_TRAPDISC_FORWARD_ACTION_FORWARD ;
 int MLXSW_AFA_TRAPDISC_SIZE ;
 int MLXSW_AFA_TRAPDISC_TRAP_ACTION_NOP ;
 int PTR_ERR (char*) ;
 char* mlxsw_afa_block_append_action (struct mlxsw_afa_block*,int ,int ) ;
 int mlxsw_afa_trapdisc_mirror_pack (char*,int,int ) ;
 int mlxsw_afa_trapdisc_pack (char*,int ,int ,int ) ;

__attribute__((used)) static int
mlxsw_afa_block_append_allocated_mirror(struct mlxsw_afa_block *block,
     u8 mirror_agent)
{
 char *act = mlxsw_afa_block_append_action(block,
        MLXSW_AFA_TRAPDISC_CODE,
        MLXSW_AFA_TRAPDISC_SIZE);
 if (IS_ERR(act))
  return PTR_ERR(act);
 mlxsw_afa_trapdisc_pack(act, MLXSW_AFA_TRAPDISC_TRAP_ACTION_NOP,
    MLXSW_AFA_TRAPDISC_FORWARD_ACTION_FORWARD, 0);
 mlxsw_afa_trapdisc_mirror_pack(act, 1, mirror_agent);
 return 0;
}
