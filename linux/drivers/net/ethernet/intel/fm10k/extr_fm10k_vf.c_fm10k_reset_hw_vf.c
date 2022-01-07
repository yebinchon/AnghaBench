
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_while_pending; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_ERR_REQUESTS_PENDING ;
 scalar_t__ FM10K_ERR_RESET_FAILED ;
 int FM10K_RESET_TIMEOUT ;
 int FM10K_VFCTRL ;
 int FM10K_VFCTRL_RST ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 scalar_t__ fm10k_stop_hw_vf (struct fm10k_hw*) ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static s32 fm10k_reset_hw_vf(struct fm10k_hw *hw)
{
 s32 err;


 err = fm10k_stop_hw_vf(hw);
 if (err == FM10K_ERR_REQUESTS_PENDING)
  hw->mac.reset_while_pending++;
 else if (err)
  return err;


 fm10k_write_reg(hw, FM10K_VFCTRL, FM10K_VFCTRL_RST);


 fm10k_write_flush(hw);
 udelay(FM10K_RESET_TIMEOUT);


 fm10k_write_reg(hw, FM10K_VFCTRL, 0);
 if (fm10k_read_reg(hw, FM10K_VFCTRL) & FM10K_VFCTRL_RST)
  return FM10K_ERR_RESET_FAILED;

 return 0;
}
