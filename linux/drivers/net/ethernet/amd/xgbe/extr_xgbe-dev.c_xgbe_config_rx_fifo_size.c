
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int rx_q_count; int netdev; TYPE_1__* pfc; scalar_t__ ets; scalar_t__ pfc_rfa; int pfcq; } ;
struct TYPE_2__ {scalar_t__ pfc_en; } ;


 int MTL_Q_RQOMR ;
 int RQS ;
 int XGBE_MAX_QUEUES ;
 unsigned int XGMAC_FIFO_UNIT ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;
 unsigned int XGMAC_PRIO_QUEUES (unsigned int) ;
 int drv ;
 int memset (int ,int ,int) ;
 int netif_info (struct xgbe_prv_data*,int ,int ,char*,unsigned int,...) ;
 int xgbe_calculate_dcb_fifo (struct xgbe_prv_data*,unsigned int,unsigned int*) ;
 int xgbe_calculate_equal_fifo (unsigned int,unsigned int,unsigned int*) ;
 int xgbe_calculate_flow_control_threshold (struct xgbe_prv_data*,unsigned int*) ;
 int xgbe_config_flow_control_threshold (struct xgbe_prv_data*) ;
 unsigned int xgbe_get_rx_fifo_size (struct xgbe_prv_data*) ;
 unsigned int xgbe_set_nonprio_fifos (unsigned int,unsigned int,unsigned int*) ;

__attribute__((used)) static void xgbe_config_rx_fifo_size(struct xgbe_prv_data *pdata)
{
 unsigned int fifo_size;
 unsigned int fifo[XGBE_MAX_QUEUES];
 unsigned int prio_queues;
 unsigned int i;


 memset(pdata->pfcq, 0, sizeof(pdata->pfcq));
 pdata->pfc_rfa = 0;

 fifo_size = xgbe_get_rx_fifo_size(pdata);
 prio_queues = XGMAC_PRIO_QUEUES(pdata->rx_q_count);


 fifo_size = xgbe_set_nonprio_fifos(fifo_size, pdata->rx_q_count, fifo);

 if (pdata->pfc && pdata->ets)
  xgbe_calculate_dcb_fifo(pdata, fifo_size, fifo);
 else
  xgbe_calculate_equal_fifo(fifo_size, prio_queues, fifo);

 for (i = 0; i < pdata->rx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_RQOMR, RQS, fifo[i]);

 xgbe_calculate_flow_control_threshold(pdata, fifo);
 xgbe_config_flow_control_threshold(pdata);

 if (pdata->pfc && pdata->ets && pdata->pfc->pfc_en) {
  netif_info(pdata, drv, pdata->netdev,
      "%u Rx hardware queues\n", pdata->rx_q_count);
  for (i = 0; i < pdata->rx_q_count; i++)
   netif_info(pdata, drv, pdata->netdev,
       "RxQ%u, %u byte fifo queue\n", i,
       ((fifo[i] + 1) * XGMAC_FIFO_UNIT));
 } else {
  netif_info(pdata, drv, pdata->netdev,
      "%u Rx hardware queues, %u byte fifo per queue\n",
      pdata->rx_q_count,
      ((fifo[0] + 1) * XGMAC_FIFO_UNIT));
 }
}
