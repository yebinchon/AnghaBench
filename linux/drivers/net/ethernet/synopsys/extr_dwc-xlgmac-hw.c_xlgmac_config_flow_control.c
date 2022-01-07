
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int dummy; } ;


 int xlgmac_config_rx_flow_control (struct xlgmac_pdata*) ;
 int xlgmac_config_tx_flow_control (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_config_flow_control(struct xlgmac_pdata *pdata)
{
 xlgmac_config_tx_flow_control(pdata);
 xlgmac_config_rx_flow_control(pdata);
}
