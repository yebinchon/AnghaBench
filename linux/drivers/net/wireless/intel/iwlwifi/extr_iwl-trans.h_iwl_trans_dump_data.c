
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans_dump_data {int dummy; } ;
struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {struct iwl_trans_dump_data* (* dump_data ) (struct iwl_trans*,int ) ;} ;


 struct iwl_trans_dump_data* stub1 (struct iwl_trans*,int ) ;

__attribute__((used)) static inline struct iwl_trans_dump_data *
iwl_trans_dump_data(struct iwl_trans *trans, u32 dump_mask)
{
 if (!trans->ops->dump_data)
  return ((void*)0);
 return trans->ops->dump_data(trans, dump_mask);
}
