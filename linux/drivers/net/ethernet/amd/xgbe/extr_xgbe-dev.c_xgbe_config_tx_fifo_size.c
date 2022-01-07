
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int tx_q_count; int netdev; } ;


 int MTL_Q_TQOMR ;
 int TQS ;
 int XGBE_MAX_QUEUES ;
 unsigned int XGMAC_FIFO_UNIT ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;
 int drv ;
 int netif_info (struct xgbe_prv_data*,int ,int ,char*,unsigned int,unsigned int) ;
 int xgbe_calculate_equal_fifo (unsigned int,unsigned int,unsigned int*) ;
 unsigned int xgbe_get_tx_fifo_size (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_tx_fifo_size(struct xgbe_prv_data *pdata)
{
 unsigned int fifo_size;
 unsigned int fifo[XGBE_MAX_QUEUES];
 unsigned int i;

 fifo_size = xgbe_get_tx_fifo_size(pdata);

 xgbe_calculate_equal_fifo(fifo_size, pdata->tx_q_count, fifo);

 for (i = 0; i < pdata->tx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_TQOMR, TQS, fifo[i]);

 netif_info(pdata, drv, pdata->netdev,
     "%d Tx hardware queues, %d byte fifo per queue\n",
     pdata->tx_q_count, ((fifo[0] + 1) * XGMAC_FIFO_UNIT));
}
