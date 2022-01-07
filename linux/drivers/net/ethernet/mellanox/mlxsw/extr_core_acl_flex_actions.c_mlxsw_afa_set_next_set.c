
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* enc_actions; } ;
struct mlxsw_afa_set {TYPE_1__ ht_key; } ;


 int MLXSW_AFA_SET_TYPE_NEXT ;
 int mlxsw_afa_set_next_action_set_ptr_set (char*,int ) ;
 int mlxsw_afa_set_type_set (char*,int ) ;

__attribute__((used)) static void mlxsw_afa_set_next_set(struct mlxsw_afa_set *set,
       u32 next_set_kvdl_index)
{
 char *actions = set->ht_key.enc_actions;

 mlxsw_afa_set_type_set(actions, MLXSW_AFA_SET_TYPE_NEXT);
 mlxsw_afa_set_next_action_set_ptr_set(actions, next_set_kvdl_index);
}
