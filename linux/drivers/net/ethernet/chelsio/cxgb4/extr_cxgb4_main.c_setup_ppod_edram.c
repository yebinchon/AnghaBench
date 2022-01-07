
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pdev_dev; int pf; int mbox; } ;


 int FW_PARAMS_MNEM_DEV ;
 unsigned int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_PPOD_EDRAM ;
 unsigned int FW_PARAMS_PARAM_X_V (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,unsigned int*,unsigned int*) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,unsigned int*,unsigned int*) ;

__attribute__((used)) static int setup_ppod_edram(struct adapter *adap)
{
 unsigned int param, val;
 int ret;







 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
  FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_PPOD_EDRAM));

 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
 if (ret < 0) {
  dev_warn(adap->pdev_dev,
    "querying PPOD_EDRAM support failed: %d\n",
    ret);
  return -1;
 }

 if (val != 1)
  return -1;

 ret = t4_set_params(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
 if (ret < 0) {
  dev_err(adap->pdev_dev,
   "setting PPOD_EDRAM failed: %d\n", ret);
  return -1;
 }
 return 0;
}
