
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {scalar_t__ rx_pause; } ;


 int xlgmac_disable_rx_flow_control (struct xlgmac_pdata*) ;
 int xlgmac_enable_rx_flow_control (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_config_rx_flow_control(struct xlgmac_pdata *pdata)
{
 if (pdata->rx_pause)
  xlgmac_enable_rx_flow_control(pdata);
 else
  xlgmac_disable_rx_flow_control(pdata);

 return 0;
}
