
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable_rx ) (struct xgbe_prv_data*) ;int (* disable_rx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int netdev; TYPE_1__ hw_if; int dev_state; } ;


 int XGBE_DOWN ;
 int netif_tx_start_all_queues (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int test_bit (int ,int *) ;
 int xgbe_config_flow_control (struct xgbe_prv_data*) ;
 int xgbe_config_rx_fifo_size (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_dcb_pfc(struct xgbe_prv_data *pdata)
{
 if (!test_bit(XGBE_DOWN, &pdata->dev_state)) {

  netif_tx_stop_all_queues(pdata->netdev);


  pdata->hw_if.disable_rx(pdata);
 }

 xgbe_config_rx_fifo_size(pdata);
 xgbe_config_flow_control(pdata);

 if (!test_bit(XGBE_DOWN, &pdata->dev_state)) {

  pdata->hw_if.enable_rx(pdata);


  netif_tx_start_all_queues(pdata->netdev);
 }
}
