
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tc_cnt; } ;
struct xgbe_prv_data {TYPE_1__ hw_feat; } ;


 int ETSALG ;
 int MTL_ETSALG_WRR ;
 int MTL_OMR ;
 int MTL_RAA_SP ;
 int MTL_TC_ETSCR ;
 int MTL_TC_QWR ;
 int MTL_TSA_ETS ;
 int QW ;
 int RAA ;
 int TSA ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_mtl_mode(struct xgbe_prv_data *pdata)
{
 unsigned int i;


 XGMAC_IOWRITE_BITS(pdata, MTL_OMR, ETSALG, MTL_ETSALG_WRR);


 for (i = 0; i < pdata->hw_feat.tc_cnt; i++) {
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_TC_ETSCR, TSA,
           MTL_TSA_ETS);
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_TC_QWR, QW, 1);
 }


 XGMAC_IOWRITE_BITS(pdata, MTL_OMR, RAA, MTL_RAA_SP);
}
