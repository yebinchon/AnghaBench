
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 unsigned long HZ ;
 int MTL_Q_RQDR ;
 int PRXQ ;
 int RXQSTS ;
 unsigned long XGBE_DMA_STOP_TIMEOUT ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_MTL_IOREAD (struct xgbe_prv_data*,unsigned int,int ) ;
 unsigned long jiffies ;
 int netdev_info (int ,char*,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xgbe_prepare_rx_stop(struct xgbe_prv_data *pdata,
     unsigned int queue)
{
 unsigned int rx_status;
 unsigned long rx_timeout;





 rx_timeout = jiffies + (XGBE_DMA_STOP_TIMEOUT * HZ);
 while (time_before(jiffies, rx_timeout)) {
  rx_status = XGMAC_MTL_IOREAD(pdata, queue, MTL_Q_RQDR);
  if ((XGMAC_GET_BITS(rx_status, MTL_Q_RQDR, PRXQ) == 0) &&
      (XGMAC_GET_BITS(rx_status, MTL_Q_RQDR, RXQSTS) == 0))
   break;

  usleep_range(500, 1000);
 }

 if (!time_before(jiffies, rx_timeout))
  netdev_info(pdata->netdev,
       "timed out waiting for Rx queue %u to empty\n",
       queue);
}
