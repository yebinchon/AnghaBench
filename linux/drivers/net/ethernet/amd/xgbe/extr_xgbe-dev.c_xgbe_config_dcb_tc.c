
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int tc_cnt; } ;
struct xgbe_prv_data {TYPE_2__* netdev; TYPE_1__ hw_feat; struct ieee_ets* ets; } ;
struct ieee_ets {unsigned int* prio_tc; int* tc_tsa; unsigned int* tc_tx_bw; } ;
struct TYPE_4__ {unsigned int mtu; } ;


 int ETSALG ;
 unsigned int IEEE_8021QAZ_MAX_TCS ;


 int MTL_ETSALG_DWRR ;
 int MTL_OMR ;
 unsigned int MTL_TCPM0R ;
 unsigned int MTL_TCPM_INC ;
 unsigned int MTL_TCPM_TC_PER_REG ;
 int MTL_TC_ETSCR ;
 int MTL_TC_QWR ;
 unsigned int MTL_TSA_ETS ;
 unsigned int MTL_TSA_SP ;
 int QW ;
 int TSA ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,unsigned int) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,unsigned int,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,TYPE_2__*,char*,unsigned int,...) ;
 int xgbe_config_tc (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_dcb_tc(struct xgbe_prv_data *pdata)
{
 struct ieee_ets *ets = pdata->ets;
 unsigned int total_weight, min_weight, weight;
 unsigned int mask, reg, reg_val;
 unsigned int i, prio;

 if (!ets)
  return;




 XGMAC_IOWRITE_BITS(pdata, MTL_OMR, ETSALG, MTL_ETSALG_DWRR);


 total_weight = pdata->netdev->mtu * pdata->hw_feat.tc_cnt;
 min_weight = total_weight / 100;
 if (!min_weight)
  min_weight = 1;

 for (i = 0; i < pdata->hw_feat.tc_cnt; i++) {

  mask = 0;
  for (prio = 0; prio < IEEE_8021QAZ_MAX_TCS; prio++) {
   if (ets->prio_tc[prio] == i)
    mask |= (1 << prio);
  }
  mask &= 0xff;

  netif_dbg(pdata, drv, pdata->netdev, "TC%u PRIO mask=%#x\n",
     i, mask);
  reg = MTL_TCPM0R + (MTL_TCPM_INC * (i / MTL_TCPM_TC_PER_REG));
  reg_val = XGMAC_IOREAD(pdata, reg);

  reg_val &= ~(0xff << ((i % MTL_TCPM_TC_PER_REG) << 3));
  reg_val |= (mask << ((i % MTL_TCPM_TC_PER_REG) << 3));

  XGMAC_IOWRITE(pdata, reg, reg_val);


  switch (ets->tc_tsa[i]) {
  case 128:
   netif_dbg(pdata, drv, pdata->netdev,
      "TC%u using SP\n", i);
   XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_TC_ETSCR, TSA,
            MTL_TSA_SP);
   break;
  case 129:
   weight = total_weight * ets->tc_tx_bw[i] / 100;
   weight = clamp(weight, min_weight, total_weight);

   netif_dbg(pdata, drv, pdata->netdev,
      "TC%u using DWRR (weight %u)\n", i, weight);
   XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_TC_ETSCR, TSA,
            MTL_TSA_ETS);
   XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_TC_QWR, QW,
            weight);
   break;
  }
 }

 xgbe_config_tc(pdata);
}
