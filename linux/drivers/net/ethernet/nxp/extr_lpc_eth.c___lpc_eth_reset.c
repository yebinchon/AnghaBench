
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_local {int net_base; } ;


 int LPC_COMMAND_REG_RESET ;
 int LPC_COMMAND_RXRESET ;
 int LPC_COMMAND_TXRESET ;
 int LPC_ENET_COMMAND (int ) ;
 int LPC_ENET_MAC1 (int ) ;
 int LPC_MAC1_RESET_MCS_RX ;
 int LPC_MAC1_RESET_MCS_TX ;
 int LPC_MAC1_RESET_RX ;
 int LPC_MAC1_RESET_TX ;
 int LPC_MAC1_SIMULATION_RESET ;
 int LPC_MAC1_SOFT_RESET ;
 int writel (int,int ) ;

__attribute__((used)) static void __lpc_eth_reset(struct netdata_local *pldat)
{

 writel((LPC_MAC1_RESET_TX | LPC_MAC1_RESET_MCS_TX | LPC_MAC1_RESET_RX |
  LPC_MAC1_RESET_MCS_RX | LPC_MAC1_SIMULATION_RESET |
  LPC_MAC1_SOFT_RESET), LPC_ENET_MAC1(pldat->net_base));
 writel((LPC_COMMAND_REG_RESET | LPC_COMMAND_TXRESET |
  LPC_COMMAND_RXRESET), LPC_ENET_COMMAND(pldat->net_base));
}
