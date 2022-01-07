
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ project; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 int ARRAY_SIZE (unsigned long*) ;
 scalar_t__ PRCMU_FW_PROJECT_U8520 ;
 unsigned long* db8500_armss_freqs ;
 unsigned long* db8520_armss_freqs ;
 TYPE_2__ fw_info ;

__attribute__((used)) static long round_armss_rate(unsigned long rate)
{
 unsigned long freq = 0;
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
  if (rate <= freq)
   break;
 }


 return freq;
}
