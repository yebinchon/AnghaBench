
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath9k_cal_list {int dummy; } ;
struct TYPE_2__ {int (* setup_calibration ) (struct ath_hw*,struct ath9k_cal_list*) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_cal_list*) ;

__attribute__((used)) static inline void ath9k_hw_setup_calibration(struct ath_hw *ah,
           struct ath9k_cal_list *currCal)
{
 ath9k_hw_private_ops(ah)->setup_calibration(ah, currCal);
}
