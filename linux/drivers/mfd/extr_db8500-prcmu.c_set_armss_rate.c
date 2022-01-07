
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ project; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 int ARM_100_OPP ;
 int ARM_50_OPP ;
 int ARM_EXTCLK ;
 int ARM_MAX_OPP ;
 int ARRAY_SIZE (unsigned long*) ;
 int EINVAL ;
 scalar_t__ PRCMU_FW_PROJECT_U8520 ;
 unsigned long* db8500_armss_freqs ;
 int db8500_prcmu_set_arm_opp (int ) ;
 unsigned long* db8520_armss_freqs ;
 TYPE_2__ fw_info ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int set_armss_rate(unsigned long rate)
{
 unsigned long freq;
 u8 opps[] = { ARM_EXTCLK, ARM_50_OPP, ARM_100_OPP, ARM_MAX_OPP };
 const unsigned long *freqs;
 int nfreqs;
 int i;

 if (fw_info.version.project == PRCMU_FW_PROJECT_U8520) {
  freqs = db8520_armss_freqs;
  nfreqs = ARRAY_SIZE(db8520_armss_freqs);
 } else {
  freqs = db8500_armss_freqs;
  nfreqs = ARRAY_SIZE(db8500_armss_freqs);
 }


 for (i = 0; i < nfreqs; i++) {
  freq = freqs[i];
  if (rate == freq)
   break;
 }

 if (rate != freq)
  return -EINVAL;


 pr_debug("SET ARM OPP 0x%02x\n", opps[i]);
 return db8500_prcmu_set_arm_opp(opps[i]);
}
