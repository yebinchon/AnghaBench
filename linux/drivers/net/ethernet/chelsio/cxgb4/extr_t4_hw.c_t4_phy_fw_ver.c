
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int portvec; } ;
struct adapter {int pf; int mbox; TYPE_1__ params; } ;


 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_PHYFW ;
 int FW_PARAMS_PARAM_DEV_PHYFW_VERSION ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAMS_PARAM_Z_V (int ) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

int t4_phy_fw_ver(struct adapter *adap, int *phy_fw_ver)
{
 u32 param, val;
 int ret;

 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_PHYFW) |
   FW_PARAMS_PARAM_Y_V(adap->params.portvec) |
   FW_PARAMS_PARAM_Z_V(FW_PARAMS_PARAM_DEV_PHYFW_VERSION));
 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 1,
         &param, &val);
 if (ret < 0)
  return ret;
 *phy_fw_ver = val;
 return 0;
}
