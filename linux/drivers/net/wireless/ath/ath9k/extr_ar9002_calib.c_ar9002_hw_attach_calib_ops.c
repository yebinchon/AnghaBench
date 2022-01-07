
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_private_ops {int setup_calibration; int init_cal; int init_cal_settings; } ;
struct ath_hw_ops {int calibrate; } ;
struct ath_hw {int dummy; } ;


 int ar9002_hw_calibrate ;
 int ar9002_hw_init_cal ;
 int ar9002_hw_init_cal_settings ;
 int ar9002_hw_setup_calibration ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;

void ar9002_hw_attach_calib_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 struct ath_hw_ops *ops = ath9k_hw_ops(ah);

 priv_ops->init_cal_settings = ar9002_hw_init_cal_settings;
 priv_ops->init_cal = ar9002_hw_init_cal;
 priv_ops->setup_calibration = ar9002_hw_setup_calibration;

 ops->calibrate = ar9002_hw_calibrate;
}
