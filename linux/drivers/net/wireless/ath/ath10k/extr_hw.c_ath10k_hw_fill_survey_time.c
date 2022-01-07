
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct survey_info {int filled; void* time_busy; void* time; } ;
struct TYPE_2__ {int cc_wraparound_type; } ;
struct ath10k {TYPE_1__ hw_params; } ;
typedef enum ath10k_hw_cc_wraparound_type { ____Placeholder_ath10k_hw_cc_wraparound_type } ath10k_hw_cc_wraparound_type ;





 void* CCNT_TO_MSEC (struct ath10k*,scalar_t__) ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;

void ath10k_hw_fill_survey_time(struct ath10k *ar, struct survey_info *survey,
    u32 cc, u32 rcc, u32 cc_prev, u32 rcc_prev)
{
 u32 cc_fix = 0;
 u32 rcc_fix = 0;
 enum ath10k_hw_cc_wraparound_type wraparound_type;

 survey->filled |= SURVEY_INFO_TIME |
     SURVEY_INFO_TIME_BUSY;

 wraparound_type = ar->hw_params.cc_wraparound_type;

 if (cc < cc_prev || rcc < rcc_prev) {
  switch (wraparound_type) {
  case 129:
   if (cc < cc_prev) {
    cc_fix = 0x7fffffff;
    survey->filled &= ~SURVEY_INFO_TIME_BUSY;
   }
   break;
  case 128:
   if (cc < cc_prev)
    cc_fix = 0x7fffffff;

   if (rcc < rcc_prev)
    rcc_fix = 0x7fffffff;
   break;
  case 130:
   break;
  }
 }

 cc -= cc_prev - cc_fix;
 rcc -= rcc_prev - rcc_fix;

 survey->time = CCNT_TO_MSEC(ar, cc);
 survey->time_busy = CCNT_TO_MSEC(ar, rcc);
}
