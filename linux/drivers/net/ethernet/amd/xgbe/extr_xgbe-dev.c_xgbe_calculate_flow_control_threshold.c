
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int rx_q_count; } ;


 unsigned int XGMAC_FIFO_UNIT ;
 int xgbe_queue_flow_control_threshold (struct xgbe_prv_data*,unsigned int,unsigned int) ;

__attribute__((used)) static void xgbe_calculate_flow_control_threshold(struct xgbe_prv_data *pdata,
        unsigned int *fifo)
{
 unsigned int q_fifo_size;
 unsigned int i;

 for (i = 0; i < pdata->rx_q_count; i++) {
  q_fifo_size = (fifo[i] + 1) * XGMAC_FIFO_UNIT;

  xgbe_queue_flow_control_threshold(pdata, i, q_fifo_size);
 }
}
