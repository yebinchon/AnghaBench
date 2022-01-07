
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int LPCR_TC ;
 int MSR_SF ;
 int SPA_CFG_DR ;
 int SPA_CFG_HV ;
 int SPA_CFG_PR ;
 int SPA_CFG_SF ;
 int SPA_CFG_TC ;
 int SPA_CFG_XLAT_hpt ;
 int SPA_CFG_XLAT_ror ;
 int SPRN_LPCR ;
 int TIF_32BIT ;
 int current ;
 int mfmsr () ;
 int mfspr (int ) ;
 scalar_t__ radix_enabled () ;
 int test_tsk_thread_flag (int ,int ) ;

__attribute__((used)) static u64 calculate_cfg_state(bool kernel)
{
 u64 state;

 state = SPA_CFG_DR;
 if (mfspr(SPRN_LPCR) & LPCR_TC)
  state |= SPA_CFG_TC;
 if (radix_enabled())
  state |= SPA_CFG_XLAT_ror;
 else
  state |= SPA_CFG_XLAT_hpt;
 state |= SPA_CFG_HV;
 if (kernel) {
  if (mfmsr() & MSR_SF)
   state |= SPA_CFG_SF;
 } else {
  state |= SPA_CFG_PR;
  if (!test_tsk_thread_flag(current, TIF_32BIT))
   state |= SPA_CFG_SF;
 }
 return state;
}
