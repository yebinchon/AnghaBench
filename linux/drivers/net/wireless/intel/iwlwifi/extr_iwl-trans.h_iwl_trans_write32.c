
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write32 ) (struct iwl_trans*,int ,int ) ;} ;


 int stub1 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static inline void iwl_trans_write32(struct iwl_trans *trans, u32 ofs, u32 val)
{
 trans->ops->write32(trans, ofs, val);
}
