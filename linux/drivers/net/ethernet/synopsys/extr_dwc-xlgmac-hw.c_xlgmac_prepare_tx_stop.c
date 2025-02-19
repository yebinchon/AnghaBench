
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int netdev; scalar_t__ mac_regs; } ;
struct xlgmac_channel {unsigned int queue_index; } ;


 unsigned int DMA_DSR0 ;
 unsigned int DMA_DSR0_TPS_START ;
 unsigned int DMA_DSR1 ;
 unsigned int DMA_DSRX_FIRST_QUEUE ;
 unsigned int DMA_DSRX_INC ;
 unsigned int DMA_DSRX_QPR ;
 unsigned int DMA_DSRX_TPS_START ;
 unsigned int DMA_DSR_Q_LEN ;
 int DMA_DSR_TPS_LEN ;
 unsigned int DMA_TPS_STOPPED ;
 unsigned int DMA_TPS_SUSPENDED ;
 unsigned long HZ ;
 unsigned long XLGMAC_DMA_STOP_TIMEOUT ;
 unsigned int XLGMAC_GET_REG_BITS (unsigned int,unsigned int,int ) ;
 unsigned long jiffies ;
 int netdev_info (int ,char*,unsigned int) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xlgmac_prepare_tx_stop(struct xlgmac_pdata *pdata,
       struct xlgmac_channel *channel)
{
 unsigned int tx_dsr, tx_pos, tx_qidx;
 unsigned long tx_timeout;
 unsigned int tx_status;


 if (channel->queue_index < DMA_DSRX_FIRST_QUEUE) {
  tx_dsr = DMA_DSR0;
  tx_pos = (channel->queue_index * DMA_DSR_Q_LEN) +
    DMA_DSR0_TPS_START;
 } else {
  tx_qidx = channel->queue_index - DMA_DSRX_FIRST_QUEUE;

  tx_dsr = DMA_DSR1 + ((tx_qidx / DMA_DSRX_QPR) * DMA_DSRX_INC);
  tx_pos = ((tx_qidx % DMA_DSRX_QPR) * DMA_DSR_Q_LEN) +
    DMA_DSRX_TPS_START;
 }





 tx_timeout = jiffies + (XLGMAC_DMA_STOP_TIMEOUT * HZ);
 while (time_before(jiffies, tx_timeout)) {
  tx_status = readl(pdata->mac_regs + tx_dsr);
  tx_status = XLGMAC_GET_REG_BITS(tx_status, tx_pos,
      DMA_DSR_TPS_LEN);
  if ((tx_status == DMA_TPS_STOPPED) ||
      (tx_status == DMA_TPS_SUSPENDED))
   break;

  usleep_range(500, 1000);
 }

 if (!time_before(jiffies, tx_timeout))
  netdev_info(pdata->netdev,
       "timed out waiting for Tx DMA channel %u to stop\n",
       channel->queue_index);
}
