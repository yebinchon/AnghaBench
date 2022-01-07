
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int enabled; } ;
struct dev_info {int rx_tasklet; int hwlock; int (* dev_rcv ) (struct dev_info*) ;struct ksz_hw hw; } ;


 int KS884X_INT_RX ;
 int KS884X_INT_RX_MASK ;
 int hw_ack_intr (struct ksz_hw*,int ) ;
 int hw_resume_rx (struct ksz_hw*) ;
 int hw_turn_on_intr (struct ksz_hw*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dev_info*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rx_proc_task(unsigned long data)
{
 struct dev_info *hw_priv = (struct dev_info *) data;
 struct ksz_hw *hw = &hw_priv->hw;

 if (!hw->enabled)
  return;
 if (unlikely(!hw_priv->dev_rcv(hw_priv))) {


  hw_resume_rx(hw);


  spin_lock_irq(&hw_priv->hwlock);
  hw_turn_on_intr(hw, KS884X_INT_RX_MASK);
  spin_unlock_irq(&hw_priv->hwlock);
 } else {
  hw_ack_intr(hw, KS884X_INT_RX);
  tasklet_schedule(&hw_priv->rx_tasklet);
 }
}
