
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ rx_pause; struct ieee_pfc* pfc; } ;
struct ieee_pfc {scalar_t__ pfc_en; } ;


 int xgbe_disable_rx_flow_control (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_flow_control (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_config_rx_flow_control(struct xgbe_prv_data *pdata)
{
 struct ieee_pfc *pfc = pdata->pfc;

 if (pdata->rx_pause || (pfc && pfc->pfc_en))
  xgbe_enable_rx_flow_control(pdata);
 else
  xgbe_disable_rx_flow_control(pdata);

 return 0;
}
