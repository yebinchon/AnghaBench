
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int maccontrol; scalar_t__ wake_override; } ;


 int MCTL_WAKE ;
 int brcms_c_mctrl_write (struct brcms_hardware*) ;
 int mboolclr (scalar_t__,int ) ;

void brcms_c_ucode_wake_override_clear(struct brcms_hardware *wlc_hw,
       u32 override_bit)
{
 mboolclr(wlc_hw->wake_override, override_bit);

 if (wlc_hw->wake_override || (wlc_hw->maccontrol & MCTL_WAKE))
  return;

 brcms_c_mctrl_write(wlc_hw);
}
