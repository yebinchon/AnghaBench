
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {TYPE_2__* hw; TYPE_1__* default_bss; } ;
struct TYPE_4__ {int d11core; } ;
struct TYPE_3__ {int beacon_period; } ;


 int CFPREP_CBI_SHIFT ;
 int D11REGOFFS (int ) ;
 int EINVAL ;
 int bcma_write32 (int ,int ,int) ;
 int brcms_c_time_lock (struct brcms_c_info*) ;
 int brcms_c_time_unlock (struct brcms_c_info*) ;
 int tsf_cfprep ;
 int tsf_cfpstart ;

int brcms_c_set_beacon_period(struct brcms_c_info *wlc, u16 period)
{
 u32 bcnint_us;

 if (period == 0)
  return -EINVAL;

 wlc->default_bss->beacon_period = period;

 bcnint_us = period << 10;
 brcms_c_time_lock(wlc);
 bcma_write32(wlc->hw->d11core, D11REGOFFS(tsf_cfprep),
       (bcnint_us << CFPREP_CBI_SHIFT));
 bcma_write32(wlc->hw->d11core, D11REGOFFS(tsf_cfpstart), bcnint_us);
 brcms_c_time_unlock(wlc);

 return 0;
}
