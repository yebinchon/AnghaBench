
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int D11REGOFFS (int ) ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int tsf_timerhigh ;
 int tsf_timerlow ;

__attribute__((used)) static void
brcms_b_read_tsf(struct brcms_hardware *wlc_hw, u32 *tsf_l_ptr,
    u32 *tsf_h_ptr)
{
 struct bcma_device *core = wlc_hw->d11core;


 *tsf_l_ptr = bcma_read32(core, D11REGOFFS(tsf_timerlow));
 *tsf_h_ptr = bcma_read32(core, D11REGOFFS(tsf_timerhigh));
}
