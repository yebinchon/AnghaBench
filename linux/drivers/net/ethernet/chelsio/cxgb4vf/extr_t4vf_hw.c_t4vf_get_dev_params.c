
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct dev_params {void* tprev; void* fwrev; } ;
struct TYPE_2__ {struct dev_params dev; } ;
struct adapter {TYPE_1__ params; } ;


 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_FWREV ;
 int FW_PARAMS_PARAM_DEV_TPREV ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int t4vf_query_params (struct adapter*,int,void**,void**) ;

int t4vf_get_dev_params(struct adapter *adapter)
{
 struct dev_params *dev_params = &adapter->params.dev;
 u32 params[7], vals[7];
 int v;

 params[0] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
       FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_FWREV));
 params[1] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
       FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_TPREV));
 v = t4vf_query_params(adapter, 2, params, vals);
 if (v)
  return v;
 dev_params->fwrev = vals[0];
 dev_params->tprev = vals[1];

 return 0;
}
