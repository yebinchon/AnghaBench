
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CXL_PSL_SR_An_HV ;
 int CXL_PSL_SR_An_MP ;
 int CXL_PSL_SR_An_PR ;
 int CXL_PSL_SR_An_R ;
 int CXL_PSL_SR_An_SF ;
 int CXL_PSL_SR_An_TC ;
 int CXL_PSL_SR_An_XLAT_hpt ;
 int CXL_PSL_SR_An_XLAT_ror ;
 int LPCR_TC ;
 int MSR_SF ;
 int SPRN_LPCR ;
 int TIF_32BIT ;
 int current ;
 int mfmsr () ;
 int mfspr (int ) ;
 scalar_t__ radix_enabled () ;
 int set_endian (int) ;
 int test_tsk_thread_flag (int ,int ) ;

u64 cxl_calculate_sr(bool master, bool kernel, bool real_mode, bool p9)
{
 u64 sr = 0;

 set_endian(sr);
 if (master)
  sr |= CXL_PSL_SR_An_MP;
 if (mfspr(SPRN_LPCR) & LPCR_TC)
  sr |= CXL_PSL_SR_An_TC;

 if (kernel) {
  if (!real_mode)
   sr |= CXL_PSL_SR_An_R;
  sr |= (mfmsr() & MSR_SF) | CXL_PSL_SR_An_HV;
 } else {
  sr |= CXL_PSL_SR_An_PR | CXL_PSL_SR_An_R;
  if (radix_enabled())
   sr |= CXL_PSL_SR_An_HV;
  else
   sr &= ~(CXL_PSL_SR_An_HV);
  if (!test_tsk_thread_flag(current, TIF_32BIT))
   sr |= CXL_PSL_SR_An_SF;
 }
 if (p9) {
  if (radix_enabled())
   sr |= CXL_PSL_SR_An_XLAT_ror;
  else
   sr |= CXL_PSL_SR_An_XLAT_hpt;
 }
 return sr;
}
