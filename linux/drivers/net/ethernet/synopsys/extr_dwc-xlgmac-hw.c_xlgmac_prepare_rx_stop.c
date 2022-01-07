
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int netdev; } ;


 unsigned long HZ ;
 int MTL_Q_RQDR ;
 int MTL_Q_RQDR_PRXQ_LEN ;
 int MTL_Q_RQDR_PRXQ_POS ;
 int MTL_Q_RQDR_RXQSTS_LEN ;
 int MTL_Q_RQDR_RXQSTS_POS ;
 unsigned long XLGMAC_DMA_STOP_TIMEOUT ;
 unsigned int XLGMAC_GET_REG_BITS (unsigned int,int ,int ) ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 unsigned long jiffies ;
 int netdev_info (int ,char*,unsigned int) ;
 unsigned int readl (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xlgmac_prepare_rx_stop(struct xlgmac_pdata *pdata,
       unsigned int queue)
{
 unsigned int rx_status, prxq, rxqsts;
 unsigned long rx_timeout;





 rx_timeout = jiffies + (XLGMAC_DMA_STOP_TIMEOUT * HZ);
 while (time_before(jiffies, rx_timeout)) {
  rx_status = readl(XLGMAC_MTL_REG(pdata, queue, MTL_Q_RQDR));
  prxq = XLGMAC_GET_REG_BITS(rx_status, MTL_Q_RQDR_PRXQ_POS,
        MTL_Q_RQDR_PRXQ_LEN);
  rxqsts = XLGMAC_GET_REG_BITS(rx_status, MTL_Q_RQDR_RXQSTS_POS,
          MTL_Q_RQDR_RXQSTS_LEN);
  if ((prxq == 0) && (rxqsts == 0))
   break;

  usleep_range(500, 1000);
 }

 if (!time_before(jiffies, rx_timeout))
  netdev_info(pdata->netdev,
       "timed out waiting for Rx queue %u to empty\n",
       queue);
}
