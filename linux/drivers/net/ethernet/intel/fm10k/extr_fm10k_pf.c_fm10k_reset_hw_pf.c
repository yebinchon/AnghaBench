
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int reset_while_pending; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int ALL ;
 int FM10K_DMA_CTRL ;
 int FM10K_DMA_CTRL_DATAPATH_RESET ;
 int FM10K_DMA_CTRL_RX_ACTIVE ;
 int FM10K_DMA_CTRL_TX_ACTIVE ;
 int FM10K_EIMR ;
 int FM10K_EIMR_DISABLE (int ) ;
 scalar_t__ FM10K_ERR_DMA_PENDING ;
 scalar_t__ FM10K_ERR_REQUESTS_PENDING ;
 scalar_t__ FM10K_ERR_RESET_FAILED ;
 int FM10K_INT_CTRL ;
 int FM10K_IP ;
 int FM10K_IP_NOTINRESET ;
 int FM10K_ITR2 (int ) ;
 int FM10K_MAX_QUEUES ;
 int FM10K_RESET_TIMEOUT ;
 int FM10K_RQMAP (scalar_t__) ;
 int FM10K_TQMAP (scalar_t__) ;
 scalar_t__ FM10K_TQMAP_TABLE_SIZE ;
 scalar_t__ fm10k_disable_queues_generic (struct fm10k_hw*,int ) ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static s32 fm10k_reset_hw_pf(struct fm10k_hw *hw)
{
 s32 err;
 u32 reg;
 u16 i;


 fm10k_write_reg(hw, FM10K_EIMR, FM10K_EIMR_DISABLE(ALL));


 fm10k_write_reg(hw, FM10K_ITR2(0), 0);
 fm10k_write_reg(hw, FM10K_INT_CTRL, 0);




 for (i = 0; i < FM10K_TQMAP_TABLE_SIZE; i++) {
  fm10k_write_reg(hw, FM10K_TQMAP(i), 0);
  fm10k_write_reg(hw, FM10K_RQMAP(i), 0);
 }


 err = fm10k_disable_queues_generic(hw, FM10K_MAX_QUEUES);
 if (err == FM10K_ERR_REQUESTS_PENDING) {
  hw->mac.reset_while_pending++;
  goto force_reset;
 } else if (err) {
  return err;
 }


 reg = fm10k_read_reg(hw, FM10K_DMA_CTRL);
 if (reg & (FM10K_DMA_CTRL_TX_ACTIVE | FM10K_DMA_CTRL_RX_ACTIVE))
  return FM10K_ERR_DMA_PENDING;

force_reset:

 reg = FM10K_DMA_CTRL_DATAPATH_RESET;
 fm10k_write_reg(hw, FM10K_DMA_CTRL, reg);


 fm10k_write_flush(hw);
 udelay(FM10K_RESET_TIMEOUT);


 reg = fm10k_read_reg(hw, FM10K_IP);
 if (!(reg & FM10K_IP_NOTINRESET))
  return FM10K_ERR_RESET_FAILED;

 return 0;
}
