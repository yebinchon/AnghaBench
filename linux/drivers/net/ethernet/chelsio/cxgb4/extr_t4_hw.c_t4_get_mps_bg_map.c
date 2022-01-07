
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int* mps_bg_map; } ;
struct adapter {int flags; int pf; int mbox; TYPE_1__ params; } ;


 int CH_WARN (struct adapter*,char*,int,unsigned int) ;
 int CXGB4_FW_OK ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_MPSBGMAP ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int MAX_NPORTS ;
 int MPS_CMN_CTL_A ;
 int NUMPORTS_G (int ) ;
 unsigned int compute_mps_bg_map (struct adapter*,int) ;
 int t4_query_params_ns (struct adapter*,int ,int ,int ,int,int*,int*) ;
 int t4_read_reg (struct adapter*,int ) ;

unsigned int t4_get_mps_bg_map(struct adapter *adapter, int pidx)
{
 u8 *mps_bg_map;
 unsigned int nports;

 nports = 1 << NUMPORTS_G(t4_read_reg(adapter, MPS_CMN_CTL_A));
 if (pidx >= nports) {
  CH_WARN(adapter, "MPS Port Index %d >= Nports %d\n",
   pidx, nports);
  return 0;
 }



 mps_bg_map = adapter->params.mps_bg_map;
 if (mps_bg_map[pidx])
  return mps_bg_map[pidx];
 if (adapter->flags & CXGB4_FW_OK) {
  u32 param, val;
  int ret;

  param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
    FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_MPSBGMAP));
  ret = t4_query_params_ns(adapter, adapter->mbox, adapter->pf,
      0, 1, &param, &val);
  if (!ret) {
   int p;




   for (p = 0; p < MAX_NPORTS; p++, val >>= 8)
    mps_bg_map[p] = val & 0xff;

   return mps_bg_map[pidx];
  }
 }





 mps_bg_map[pidx] = compute_mps_bg_map(adapter, pidx);
 return mps_bg_map[pidx];
}
