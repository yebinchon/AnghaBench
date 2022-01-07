
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pf; int mbox; } ;


 int CH_WARN (struct adapter*,char*,int,unsigned int) ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_TPCHMAP ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int MPS_CMN_CTL_A ;
 int NUMPORTS_G (int ) ;
 int t4_query_params_ns (struct adapter*,int ,int ,int ,int,int*,int*) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static unsigned int t4_get_tp_e2c_map(struct adapter *adapter, int pidx)
{
 unsigned int nports;
 u32 param, val = 0;
 int ret;

 nports = 1 << NUMPORTS_G(t4_read_reg(adapter, MPS_CMN_CTL_A));
 if (pidx >= nports) {
  CH_WARN(adapter, "TP E2C Channel Port Index %d >= Nports %d\n",
   pidx, nports);
  return 0;
 }




 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_TPCHMAP));
 ret = t4_query_params_ns(adapter, adapter->mbox, adapter->pf,
     0, 1, &param, &val);
 if (!ret)
  return (val >> (8 * pidx)) & 0xff;

 return 0;
}
