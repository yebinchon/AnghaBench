
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; } ;
struct xgbe_prv_data {int netdev; TYPE_1__ hw_feat; } ;


 unsigned int DMA_DSR0 ;
 unsigned int DMA_DSR0_TPS_START ;
 unsigned int DMA_DSR1 ;
 unsigned int DMA_DSRX_FIRST_QUEUE ;
 unsigned int DMA_DSRX_INC ;
 unsigned int DMA_DSRX_QPR ;
 unsigned int DMA_DSRX_TPS_START ;
 unsigned int DMA_DSR_Q_WIDTH ;
 int DMA_DSR_TPS_WIDTH ;
 unsigned int DMA_TPS_STOPPED ;
 unsigned int DMA_TPS_SUSPENDED ;
 unsigned int GET_BITS (unsigned int,unsigned int,int ) ;
 unsigned long HZ ;
 int MAC_VR ;
 int SNPSVER ;
 unsigned long XGBE_DMA_STOP_TIMEOUT ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,unsigned int) ;
 unsigned long jiffies ;
 int netdev_info (int ,char*,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 void xgbe_txq_prepare_tx_stop (struct xgbe_prv_data*,unsigned int) ;

__attribute__((used)) static void xgbe_prepare_tx_stop(struct xgbe_prv_data *pdata,
     unsigned int queue)
{
 unsigned int tx_dsr, tx_pos, tx_qidx;
 unsigned int tx_status;
 unsigned long tx_timeout;

 if (XGMAC_GET_BITS(pdata->hw_feat.version, MAC_VR, SNPSVER) > 0x20)
  return xgbe_txq_prepare_tx_stop(pdata, queue);


 if (queue < DMA_DSRX_FIRST_QUEUE) {
  tx_dsr = DMA_DSR0;
  tx_pos = (queue * DMA_DSR_Q_WIDTH) + DMA_DSR0_TPS_START;
 } else {
  tx_qidx = queue - DMA_DSRX_FIRST_QUEUE;

  tx_dsr = DMA_DSR1 + ((tx_qidx / DMA_DSRX_QPR) * DMA_DSRX_INC);
  tx_pos = ((tx_qidx % DMA_DSRX_QPR) * DMA_DSR_Q_WIDTH) +
    DMA_DSRX_TPS_START;
 }





 tx_timeout = jiffies + (XGBE_DMA_STOP_TIMEOUT * HZ);
 while (time_before(jiffies, tx_timeout)) {
  tx_status = XGMAC_IOREAD(pdata, tx_dsr);
  tx_status = GET_BITS(tx_status, tx_pos, DMA_DSR_TPS_WIDTH);
  if ((tx_status == DMA_TPS_STOPPED) ||
      (tx_status == DMA_TPS_SUSPENDED))
   break;

  usleep_range(500, 1000);
 }

 if (!time_before(jiffies, tx_timeout))
  netdev_info(pdata->netdev,
       "timed out waiting for Tx DMA channel %u to stop\n",
       queue);
}
