
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct e1000_hw {int dummy; } ;


 int E1000_82574_SYSTIM_EPSILON ;
 int E1000_MAX_82574_SYSTIM_REREADS ;
 int E1000_TIMINCA_INCVALUE_MASK ;
 int SYSTIMH ;
 int SYSTIML ;
 int TIMINCA ;
 int do_div (int,int) ;
 int er32 (int ) ;
 int ptp_read_system_postts (struct ptp_system_timestamp*) ;
 int ptp_read_system_prets (struct ptp_system_timestamp*) ;

__attribute__((used)) static u64 e1000e_sanitize_systim(struct e1000_hw *hw, u64 systim,
      struct ptp_system_timestamp *sts)
{
 u64 time_delta, rem, temp;
 u64 systim_next;
 u32 incvalue;
 int i;

 incvalue = er32(TIMINCA) & E1000_TIMINCA_INCVALUE_MASK;
 for (i = 0; i < E1000_MAX_82574_SYSTIM_REREADS; i++) {

  ptp_read_system_prets(sts);
  systim_next = (u64)er32(SYSTIML);
  ptp_read_system_postts(sts);
  systim_next |= (u64)er32(SYSTIMH) << 32;

  time_delta = systim_next - systim;
  temp = time_delta;

  rem = incvalue ? do_div(temp, incvalue) : (time_delta != 0);

  systim = systim_next;

  if ((time_delta < E1000_82574_SYSTIM_EPSILON) && (rem == 0))
   break;
 }

 return systim;
}
