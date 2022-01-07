
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {int d11core; } ;


 int D11REGOFFS (int ) ;
 int bcma_write32 (int ,int ,int) ;
 int brcms_c_time_lock (struct brcms_c_info*) ;
 int brcms_c_time_unlock (struct brcms_c_info*) ;
 int tsf_timerhigh ;
 int tsf_timerlow ;

void brcms_c_tsf_set(struct brcms_c_info *wlc, u64 tsf)
{
 u32 tsf_h, tsf_l;

 brcms_c_time_lock(wlc);

 tsf_l = tsf;
 tsf_h = (tsf >> 32);


 bcma_write32(wlc->hw->d11core, D11REGOFFS(tsf_timerlow), tsf_l);
 bcma_write32(wlc->hw->d11core, D11REGOFFS(tsf_timerhigh), tsf_h);

 brcms_c_time_unlock(wlc);
}
