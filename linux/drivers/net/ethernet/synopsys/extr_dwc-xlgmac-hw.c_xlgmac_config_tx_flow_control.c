
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {scalar_t__ tx_pause; } ;


 int xlgmac_disable_tx_flow_control (struct xlgmac_pdata*) ;
 int xlgmac_enable_tx_flow_control (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_config_tx_flow_control(struct xlgmac_pdata *pdata)
{
 if (pdata->tx_pause)
  xlgmac_enable_tx_flow_control(pdata);
 else
  xlgmac_disable_tx_flow_control(pdata);

 return 0;
}
