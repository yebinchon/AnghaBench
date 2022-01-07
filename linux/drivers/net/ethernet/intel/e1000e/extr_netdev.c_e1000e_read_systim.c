
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags2; struct e1000_hw hw; } ;


 scalar_t__ E1000_TIMINCA_INCVALUE_MASK ;
 int FLAG2_CHECK_SYSTIM_OVERFLOW ;
 int SYSTIMH ;
 int SYSTIML ;
 int e1000e_sanitize_systim (struct e1000_hw*,int,struct ptp_system_timestamp*) ;
 scalar_t__ er32 (int ) ;
 int ptp_read_system_postts (struct ptp_system_timestamp*) ;
 int ptp_read_system_prets (struct ptp_system_timestamp*) ;

u64 e1000e_read_systim(struct e1000_adapter *adapter,
         struct ptp_system_timestamp *sts)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 systimel, systimel_2, systimeh;
 u64 systim;






 ptp_read_system_prets(sts);
 systimel = er32(SYSTIML);
 ptp_read_system_postts(sts);
 systimeh = er32(SYSTIMH);

 if (systimel >= (u32)0xffffffff - E1000_TIMINCA_INCVALUE_MASK) {
  ptp_read_system_prets(sts);
  systimel_2 = er32(SYSTIML);
  ptp_read_system_postts(sts);
  if (systimel > systimel_2) {



   systimeh = er32(SYSTIMH);
   systimel = systimel_2;
  }
 }
 systim = (u64)systimel;
 systim |= (u64)systimeh << 32;

 if (adapter->flags2 & FLAG2_CHECK_SYSTIM_OVERFLOW)
  systim = e1000e_sanitize_systim(hw, systim, sts);

 return systim;
}
