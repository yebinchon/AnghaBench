
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vpd_params {int cclk; } ;
struct TYPE_2__ {struct vpd_params vpd; } ;
struct adapter {TYPE_1__ params; } ;


 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_CCLK ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int t4vf_query_params (struct adapter*,int,int*,int*) ;

int t4vf_get_vpd_params(struct adapter *adapter)
{
 struct vpd_params *vpd_params = &adapter->params.vpd;
 u32 params[7], vals[7];
 int v;

 params[0] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
       FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_CCLK));
 v = t4vf_query_params(adapter, 1, params, vals);
 if (v)
  return v;
 vpd_params->cclk = vals[0];

 return 0;
}
