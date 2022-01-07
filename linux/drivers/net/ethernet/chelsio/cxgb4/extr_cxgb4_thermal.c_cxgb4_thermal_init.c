
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ch_thermal {int trip_temp; int * tzdev; int trip_type; } ;
struct adapter {int pdev_dev; int pf; int mbox; struct ch_thermal ch_thermal; } ;


 int CXGB4_NUM_TRIPS ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_DIAG ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAM_DEV_DIAG_MAXTMPTHRESH ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int THERMAL_TRIP_CRITICAL ;
 int cxgb4_thermal_ops ;
 int dev_err (int ,char*) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,int*,int*) ;
 int * thermal_zone_device_register (char*,int,int ,struct adapter*,int *,int *,int ,int ) ;

int cxgb4_thermal_init(struct adapter *adap)
{
 struct ch_thermal *ch_thermal = &adap->ch_thermal;
 int num_trip = CXGB4_NUM_TRIPS;
 u32 param, val;
 int ret;




 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_DIAG) |
   FW_PARAMS_PARAM_Y_V(FW_PARAM_DEV_DIAG_MAXTMPTHRESH));

 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 1,
         &param, &val);
 if (ret < 0) {
  num_trip = 0;
 } else {
  ch_thermal->trip_temp = val * 1000;
  ch_thermal->trip_type = THERMAL_TRIP_CRITICAL;
 }

 ch_thermal->tzdev = thermal_zone_device_register("cxgb4", num_trip,
        0, adap,
        &cxgb4_thermal_ops,
        ((void*)0), 0, 0);
 if (IS_ERR(ch_thermal->tzdev)) {
  ret = PTR_ERR(ch_thermal->tzdev);
  dev_err(adap->pdev_dev, "Failed to register thermal zone\n");
  ch_thermal->tzdev = ((void*)0);
  return ret;
 }
 return 0;
}
