
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int reg_lock; int hw; scalar_t__ mac80211_registered; } ;


 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ;
 int CSR_UCODE_DRV_GP1_SET ;
 int D_POWER (char*) ;
 int _il_grab_nic_access (struct il_priv*) ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_release_nic_access (struct il_priv*) ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int ieee80211_stop_queues (int ) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
il4965_perform_ct_kill_task(struct il_priv *il)
{
 unsigned long flags;

 D_POWER("Stop all queues\n");

 if (il->mac80211_registered)
  ieee80211_stop_queues(il->hw);

 _il_wr(il, CSR_UCODE_DRV_GP1_SET,
        CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
 _il_rd(il, CSR_UCODE_DRV_GP1);

 spin_lock_irqsave(&il->reg_lock, flags);
 if (likely(_il_grab_nic_access(il)))
  _il_release_nic_access(il);
 spin_unlock_irqrestore(&il->reg_lock, flags);
}
