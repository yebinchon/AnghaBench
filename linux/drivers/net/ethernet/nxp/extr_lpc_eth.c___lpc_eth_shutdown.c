
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_local {int net_base; } ;


 int LPC_ENET_MAC1 (int ) ;
 int LPC_ENET_MAC2 (int ) ;
 int __lpc_eth_reset (struct netdata_local*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void __lpc_eth_shutdown(struct netdata_local *pldat)
{

 __lpc_eth_reset(pldat);
 writel(0, LPC_ENET_MAC1(pldat->net_base));
 writel(0, LPC_ENET_MAC2(pldat->net_base));
}
