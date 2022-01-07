
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coeff {int dummy; } ;
struct ath_hw {int dummy; } ;


 int AR9300_MAX_CHAINS ;
 int MAXIQCAL ;
 int __ar955x_tx_iq_cal_sort (struct ath_hw*,struct coeff*,int,int) ;

__attribute__((used)) static bool ar955x_tx_iq_cal_median(struct ath_hw *ah,
        struct coeff *coeff,
        int iqcal_idx,
        int nmeasurement)
{
 int i;

 if ((iqcal_idx + 1) != MAXIQCAL)
  return 0;

 for (i = 0; i < AR9300_MAX_CHAINS; i++) {
  __ar955x_tx_iq_cal_sort(ah, coeff, i, nmeasurement);
 }

 return 1;
}
