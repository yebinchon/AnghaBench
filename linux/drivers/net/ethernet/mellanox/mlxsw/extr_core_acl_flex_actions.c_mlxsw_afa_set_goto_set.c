
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {char* enc_actions; } ;
struct mlxsw_afa_set {TYPE_1__ ht_key; } ;
typedef enum mlxsw_afa_set_goto_binding_cmd { ____Placeholder_mlxsw_afa_set_goto_binding_cmd } mlxsw_afa_set_goto_binding_cmd ;


 int MLXSW_AFA_SET_TYPE_GOTO ;
 int mlxsw_afa_set_goto_binding_cmd_set (char*,int) ;
 int mlxsw_afa_set_goto_g_set (char*,int) ;
 int mlxsw_afa_set_goto_next_binding_set (char*,int ) ;
 int mlxsw_afa_set_type_set (char*,int ) ;

__attribute__((used)) static void mlxsw_afa_set_goto_set(struct mlxsw_afa_set *set,
       enum mlxsw_afa_set_goto_binding_cmd cmd,
       u16 group_id)
{
 char *actions = set->ht_key.enc_actions;

 mlxsw_afa_set_type_set(actions, MLXSW_AFA_SET_TYPE_GOTO);
 mlxsw_afa_set_goto_g_set(actions, 1);
 mlxsw_afa_set_goto_binding_cmd_set(actions, cmd);
 mlxsw_afa_set_goto_next_binding_set(actions, group_id);
}
