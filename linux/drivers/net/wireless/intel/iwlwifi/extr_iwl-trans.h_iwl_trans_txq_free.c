
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* txq_free ) (struct iwl_trans*,int) ;} ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int stub1 (struct iwl_trans*,int) ;

__attribute__((used)) static inline void
iwl_trans_txq_free(struct iwl_trans *trans, int queue)
{
 if (WARN_ON_ONCE(!trans->ops->txq_free))
  return;

 trans->ops->txq_free(trans, queue);
}
