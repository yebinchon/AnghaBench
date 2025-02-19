
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {struct adapter* devdata; } ;
struct adapter {int pf; int mbox; } ;


 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_DIAG ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAM_DEV_DIAG_TMP ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

__attribute__((used)) static int cxgb4_thermal_get_temp(struct thermal_zone_device *tzdev,
      int *temp)
{
 struct adapter *adap = tzdev->devdata;
 u32 param, val;
 int ret;

 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_DIAG) |
   FW_PARAMS_PARAM_Y_V(FW_PARAM_DEV_DIAG_TMP));

 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 1,
         &param, &val);
 if (ret < 0 || val == 0)
  return -1;

 *temp = val * 1000;
 return 0;
}
