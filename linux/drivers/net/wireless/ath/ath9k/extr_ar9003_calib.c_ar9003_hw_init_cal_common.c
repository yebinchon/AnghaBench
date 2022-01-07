
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int * cal_list_curr; int * cal_list; int iq_caldata; int * cal_list_last; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {scalar_t__ CalValid; } ;


 int INIT_CAL (int *) ;
 int INSERT_CAL (struct ath_hw*,int *) ;
 int ath9k_hw_reset_calibration (struct ath_hw*,int *) ;

__attribute__((used)) static void ar9003_hw_init_cal_common(struct ath_hw *ah)
{
 struct ath9k_hw_cal_data *caldata = ah->caldata;


 ah->cal_list = ah->cal_list_last = ah->cal_list_curr = ((void*)0);

 INIT_CAL(&ah->iq_caldata);
 INSERT_CAL(ah, &ah->iq_caldata);


 ah->cal_list_curr = ah->cal_list;

 if (ah->cal_list_curr)
  ath9k_hw_reset_calibration(ah, ah->cal_list_curr);

 if (caldata)
  caldata->CalValid = 0;
}
