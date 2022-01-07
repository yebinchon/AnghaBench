
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_mem ) (struct iwl_trans*,int ,void const*,int) ;} ;


 int stub1 (struct iwl_trans*,int ,void const*,int) ;

__attribute__((used)) static inline int iwl_trans_write_mem(struct iwl_trans *trans, u32 addr,
          const void *buf, int dwords)
{
 return trans->ops->write_mem(trans, addr, buf, dwords);
}
