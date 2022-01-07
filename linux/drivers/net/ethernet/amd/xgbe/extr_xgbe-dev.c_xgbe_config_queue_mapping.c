
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tc_cnt; } ;
struct xgbe_prv_data {unsigned int tx_q_count; unsigned int* q2tc_map; unsigned int rx_q_count; unsigned int* prio2q_map; int netdev; TYPE_1__ hw_feat; } ;


 unsigned int IEEE_8021QAZ_MAX_TCS ;
 unsigned int MAC_RQC2R ;
 scalar_t__ MAC_RQC2_INC ;
 int MAC_RQC2_Q_PER_REG ;
 int MTL_Q_TQOMR ;
 unsigned int MTL_RQDCM0R ;
 scalar_t__ MTL_RQDCM_INC ;
 int MTL_RQDCM_Q_PER_REG ;
 int Q2TCMAP ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,unsigned int,unsigned int) ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;
 unsigned int XGMAC_PRIO_QUEUES (unsigned int) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void xgbe_config_queue_mapping(struct xgbe_prv_data *pdata)
{
 unsigned int qptc, qptc_extra, queue;
 unsigned int prio_queues;
 unsigned int ppq, ppq_extra, prio;
 unsigned int mask;
 unsigned int i, j, reg, reg_val;




 qptc = pdata->tx_q_count / pdata->hw_feat.tc_cnt;
 qptc_extra = pdata->tx_q_count % pdata->hw_feat.tc_cnt;

 for (i = 0, queue = 0; i < pdata->hw_feat.tc_cnt; i++) {
  for (j = 0; j < qptc; j++) {
   netif_dbg(pdata, drv, pdata->netdev,
      "TXq%u mapped to TC%u\n", queue, i);
   XGMAC_MTL_IOWRITE_BITS(pdata, queue, MTL_Q_TQOMR,
            Q2TCMAP, i);
   pdata->q2tc_map[queue++] = i;
  }

  if (i < qptc_extra) {
   netif_dbg(pdata, drv, pdata->netdev,
      "TXq%u mapped to TC%u\n", queue, i);
   XGMAC_MTL_IOWRITE_BITS(pdata, queue, MTL_Q_TQOMR,
            Q2TCMAP, i);
   pdata->q2tc_map[queue++] = i;
  }
 }


 prio_queues = XGMAC_PRIO_QUEUES(pdata->rx_q_count);
 ppq = IEEE_8021QAZ_MAX_TCS / prio_queues;
 ppq_extra = IEEE_8021QAZ_MAX_TCS % prio_queues;

 reg = MAC_RQC2R;
 reg_val = 0;
 for (i = 0, prio = 0; i < prio_queues;) {
  mask = 0;
  for (j = 0; j < ppq; j++) {
   netif_dbg(pdata, drv, pdata->netdev,
      "PRIO%u mapped to RXq%u\n", prio, i);
   mask |= (1 << prio);
   pdata->prio2q_map[prio++] = i;
  }

  if (i < ppq_extra) {
   netif_dbg(pdata, drv, pdata->netdev,
      "PRIO%u mapped to RXq%u\n", prio, i);
   mask |= (1 << prio);
   pdata->prio2q_map[prio++] = i;
  }

  reg_val |= (mask << ((i++ % MAC_RQC2_Q_PER_REG) << 3));

  if ((i % MAC_RQC2_Q_PER_REG) && (i != prio_queues))
   continue;

  XGMAC_IOWRITE(pdata, reg, reg_val);
  reg += MAC_RQC2_INC;
  reg_val = 0;
 }


 reg = MTL_RQDCM0R;
 reg_val = 0;
 for (i = 0; i < pdata->rx_q_count;) {
  reg_val |= (0x80 << ((i++ % MTL_RQDCM_Q_PER_REG) << 3));

  if ((i % MTL_RQDCM_Q_PER_REG) && (i != pdata->rx_q_count))
   continue;

  XGMAC_IOWRITE(pdata, reg, reg_val);

  reg += MTL_RQDCM_INC;
  reg_val = 0;
 }
}
