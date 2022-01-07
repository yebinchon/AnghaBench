
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_reg_trans {int err; int completion; int list; int tx_skb; struct mlxsw_core* core; } ;
struct TYPE_2__ {int trans_list_lock; } ;
struct mlxsw_core {TYPE_1__ emad; } ;


 int complete (int *) ;
 int dev_kfree_skb (int ) ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mlxsw_emad_trans_finish(struct mlxsw_reg_trans *trans, int err)
{
 struct mlxsw_core *mlxsw_core = trans->core;

 dev_kfree_skb(trans->tx_skb);
 spin_lock_bh(&mlxsw_core->emad.trans_list_lock);
 list_del_rcu(&trans->list);
 spin_unlock_bh(&mlxsw_core->emad.trans_list_lock);
 trans->err = err;
 complete(&trans->completion);
}
