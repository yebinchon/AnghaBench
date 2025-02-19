
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int rx_overrun_vf; int rx_overrun_pf; struct fm10k_hw hw; } ;


 int BIT (int) ;
 int FM10K_EICR_MAXHOLDTIME ;
 int FM10K_MAXHOLDQ (int) ;
 int FM10K_MAX_QUEUES_PF ;
 int FM10K_RXDCTL (int) ;
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int const) ;

__attribute__((used)) static void fm10k_reset_drop_on_empty(struct fm10k_intfc *interface, u32 eicr)
{
 struct fm10k_hw *hw = &interface->hw;
 const u32 rxdctl = FM10K_RXDCTL_WRITE_BACK_MIN_DELAY;
 u32 maxholdq;
 int q;

 if (!(eicr & FM10K_EICR_MAXHOLDTIME))
  return;

 maxholdq = fm10k_read_reg(hw, FM10K_MAXHOLDQ(7));
 if (maxholdq)
  fm10k_write_reg(hw, FM10K_MAXHOLDQ(7), maxholdq);
 for (q = 255;;) {
  if (maxholdq & BIT(31)) {
   if (q < FM10K_MAX_QUEUES_PF) {
    interface->rx_overrun_pf++;
    fm10k_write_reg(hw, FM10K_RXDCTL(q), rxdctl);
   } else {
    interface->rx_overrun_vf++;
   }
  }

  maxholdq *= 2;
  if (!maxholdq)
   q &= ~(32 - 1);

  if (!q)
   break;

  if (q-- % 32)
   continue;

  maxholdq = fm10k_read_reg(hw, FM10K_MAXHOLDQ(q / 32));
  if (maxholdq)
   fm10k_write_reg(hw, FM10K_MAXHOLDQ(q / 32), maxholdq);
 }
}
