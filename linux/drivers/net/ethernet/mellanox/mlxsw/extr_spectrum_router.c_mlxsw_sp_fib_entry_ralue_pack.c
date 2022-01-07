
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_fib_entry {TYPE_3__* fib_node; } ;
struct mlxsw_sp_fib {int proto; TYPE_1__* vr; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;
struct TYPE_5__ {scalar_t__ addr; int prefix_len; } ;
struct TYPE_6__ {TYPE_2__ key; struct mlxsw_sp_fib* fib; } ;
struct TYPE_4__ {int id; } ;




 int mlxsw_reg_ralue_pack4 (char*,int,int,int ,int ,int ) ;
 int mlxsw_reg_ralue_pack6 (char*,int,int,int ,int ,scalar_t__) ;

__attribute__((used)) static void
mlxsw_sp_fib_entry_ralue_pack(char *ralue_pl,
         const struct mlxsw_sp_fib_entry *fib_entry,
         enum mlxsw_reg_ralue_op op)
{
 struct mlxsw_sp_fib *fib = fib_entry->fib_node->fib;
 enum mlxsw_reg_ralxx_protocol proto;
 u32 *p_dip;

 proto = (enum mlxsw_reg_ralxx_protocol) fib->proto;

 switch (fib->proto) {
 case 129:
  p_dip = (u32 *) fib_entry->fib_node->key.addr;
  mlxsw_reg_ralue_pack4(ralue_pl, proto, op, fib->vr->id,
          fib_entry->fib_node->key.prefix_len,
          *p_dip);
  break;
 case 128:
  mlxsw_reg_ralue_pack6(ralue_pl, proto, op, fib->vr->id,
          fib_entry->fib_node->key.prefix_len,
          fib_entry->fib_node->key.addr);
  break;
 }
}
