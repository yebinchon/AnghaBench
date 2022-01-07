
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;


 int ATH9K_NF_CAL_HIST_MAX ;

__attribute__((used)) static int16_t ath9k_hw_get_nf_hist_mid(int16_t *nfCalBuffer)
{
 int16_t nfval;
 int16_t sort[ATH9K_NF_CAL_HIST_MAX];
 int i, j;

 for (i = 0; i < ATH9K_NF_CAL_HIST_MAX; i++)
  sort[i] = nfCalBuffer[i];

 for (i = 0; i < ATH9K_NF_CAL_HIST_MAX - 1; i++) {
  for (j = 1; j < ATH9K_NF_CAL_HIST_MAX - i; j++) {
   if (sort[j] > sort[j - 1]) {
    nfval = sort[j];
    sort[j] = sort[j - 1];
    sort[j - 1] = nfval;
   }
  }
 }
 nfval = sort[(ATH9K_NF_CAL_HIST_MAX - 1) >> 1];

 return nfval;
}
