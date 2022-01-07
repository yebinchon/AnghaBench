
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_1__* ops; int state; } ;
struct TYPE_2__ {int (* fw_alive ) (struct iwl_trans*,int ) ;} ;


 int IWL_TRANS_FW_ALIVE ;
 int might_sleep () ;
 int stub1 (struct iwl_trans*,int ) ;

__attribute__((used)) static inline void iwl_trans_fw_alive(struct iwl_trans *trans, u32 scd_addr)
{
 might_sleep();

 trans->state = IWL_TRANS_FW_ALIVE;

 trans->ops->fw_alive(trans, scd_addr);
}
