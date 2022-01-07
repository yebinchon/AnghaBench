
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 unsigned long HZ ;
 int MTL_Q_TQDR ;
 int TRCSTS ;
 int TXQSTS ;
 unsigned long XGBE_DMA_STOP_TIMEOUT ;
 int XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_MTL_IOREAD (struct xgbe_prv_data*,unsigned int,int ) ;
 unsigned long jiffies ;
 int netdev_info (int ,char*,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xgbe_txq_prepare_tx_stop(struct xgbe_prv_data *pdata,
         unsigned int queue)
{
 unsigned int tx_status;
 unsigned long tx_timeout;





 tx_timeout = jiffies + (XGBE_DMA_STOP_TIMEOUT * HZ);
 while (time_before(jiffies, tx_timeout)) {
  tx_status = XGMAC_MTL_IOREAD(pdata, queue, MTL_Q_TQDR);
  if ((XGMAC_GET_BITS(tx_status, MTL_Q_TQDR, TRCSTS) != 1) &&
      (XGMAC_GET_BITS(tx_status, MTL_Q_TQDR, TXQSTS) == 0))
   break;

  usleep_range(500, 1000);
 }

 if (!time_before(jiffies, tx_timeout))
  netdev_info(pdata->netdev,
       "timed out waiting for Tx queue %u to empty\n",
       queue);
}
