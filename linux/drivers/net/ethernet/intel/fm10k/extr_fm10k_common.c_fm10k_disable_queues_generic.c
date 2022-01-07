
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int tx_ready; } ;
struct fm10k_hw {int hw_addr; TYPE_1__ mac; } ;
typedef int s32 ;


 int FM10K_ERR_REQUESTS_PENDING ;
 scalar_t__ FM10K_QUEUE_DISABLE_TIMEOUT ;
 scalar_t__ FM10K_REMOVED (int ) ;
 int FM10K_RXQCTL (scalar_t__) ;
 int FM10K_RXQCTL_ENABLE ;
 int FM10K_TXDCTL (scalar_t__) ;
 int FM10K_TXDCTL_ENABLE ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 int udelay (int) ;

s32 fm10k_disable_queues_generic(struct fm10k_hw *hw, u16 q_cnt)
{
 u32 reg;
 u16 i, time;


 hw->mac.tx_ready = 0;

 if (FM10K_REMOVED(hw->hw_addr))
  return 0;


 for (i = 0; i < q_cnt; i++) {
  reg = fm10k_read_reg(hw, FM10K_TXDCTL(i));
  fm10k_write_reg(hw, FM10K_TXDCTL(i),
    reg & ~FM10K_TXDCTL_ENABLE);
  reg = fm10k_read_reg(hw, FM10K_RXQCTL(i));
  fm10k_write_reg(hw, FM10K_RXQCTL(i),
    reg & ~FM10K_RXQCTL_ENABLE);
 }

 fm10k_write_flush(hw);
 udelay(1);


 for (i = 0, time = FM10K_QUEUE_DISABLE_TIMEOUT; time;) {

  if (i == q_cnt)
   return 0;


  reg = fm10k_read_reg(hw, FM10K_TXDCTL(i));
  if (!~reg || !(reg & FM10K_TXDCTL_ENABLE)) {
   reg = fm10k_read_reg(hw, FM10K_RXQCTL(i));
   if (!~reg || !(reg & FM10K_RXQCTL_ENABLE)) {
    i++;
    continue;
   }
  }


  time--;
  if (time)
   udelay(1);
 }

 return FM10K_ERR_REQUESTS_PENDING;
}
