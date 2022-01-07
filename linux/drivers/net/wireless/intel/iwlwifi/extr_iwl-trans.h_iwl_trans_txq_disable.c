
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* txq_disable ) (struct iwl_trans*,int,int) ;} ;


 int stub1 (struct iwl_trans*,int,int) ;

__attribute__((used)) static inline void iwl_trans_txq_disable(struct iwl_trans *trans, int queue,
      bool configure_scd)
{
 trans->ops->txq_disable(trans, queue, configure_scd);
}
