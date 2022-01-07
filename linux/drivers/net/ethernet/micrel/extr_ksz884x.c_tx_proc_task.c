
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;
struct dev_info {int hwlock; struct ksz_hw hw; } ;


 int KS884X_INT_TX ;
 int KS884X_INT_TX_MASK ;
 int hw_ack_intr (struct ksz_hw*,int ) ;
 int hw_turn_on_intr (struct ksz_hw*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tx_done (struct dev_info*) ;

__attribute__((used)) static void tx_proc_task(unsigned long data)
{
 struct dev_info *hw_priv = (struct dev_info *) data;
 struct ksz_hw *hw = &hw_priv->hw;

 hw_ack_intr(hw, KS884X_INT_TX_MASK);

 tx_done(hw_priv);


 spin_lock_irq(&hw_priv->hwlock);
 hw_turn_on_intr(hw, KS884X_INT_TX);
 spin_unlock_irq(&hw_priv->hwlock);
}
