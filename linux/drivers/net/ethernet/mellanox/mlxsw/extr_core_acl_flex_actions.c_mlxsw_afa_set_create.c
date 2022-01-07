
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_first; } ;
struct mlxsw_afa_set {int ref_count; TYPE_1__ ht_key; } ;


 int GFP_KERNEL ;
 int MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM ;
 struct mlxsw_afa_set* kzalloc (int,int ) ;
 int mlxsw_afa_set_goto_set (struct mlxsw_afa_set*,int ,int ) ;

__attribute__((used)) static struct mlxsw_afa_set *mlxsw_afa_set_create(bool is_first)
{
 struct mlxsw_afa_set *set;

 set = kzalloc(sizeof(*set), GFP_KERNEL);
 if (!set)
  return ((void*)0);

 mlxsw_afa_set_goto_set(set, MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM, 0);
 set->ht_key.is_first = is_first;
 set->ref_count = 1;
 return set;
}
