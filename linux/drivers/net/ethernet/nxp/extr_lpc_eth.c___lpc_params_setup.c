
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdata_local {scalar_t__ duplex; scalar_t__ speed; int net_base; } ;


 scalar_t__ DUPLEX_FULL ;
 int LPC_COMMAND_FULLDUPLEX ;
 int LPC_ENET_COMMAND (int ) ;
 int LPC_ENET_IPGT (int ) ;
 int LPC_ENET_MAC2 (int ) ;
 int LPC_ENET_SUPP (int ) ;
 int LPC_IPGT_LOAD (int) ;
 int LPC_MAC2_FULL_DUPLEX ;
 int LPC_SUPP_SPEED ;
 scalar_t__ SPEED_100 ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void __lpc_params_setup(struct netdata_local *pldat)
{
 u32 tmp;

 if (pldat->duplex == DUPLEX_FULL) {
  tmp = readl(LPC_ENET_MAC2(pldat->net_base));
  tmp |= LPC_MAC2_FULL_DUPLEX;
  writel(tmp, LPC_ENET_MAC2(pldat->net_base));
  tmp = readl(LPC_ENET_COMMAND(pldat->net_base));
  tmp |= LPC_COMMAND_FULLDUPLEX;
  writel(tmp, LPC_ENET_COMMAND(pldat->net_base));
  writel(LPC_IPGT_LOAD(0x15), LPC_ENET_IPGT(pldat->net_base));
 } else {
  tmp = readl(LPC_ENET_MAC2(pldat->net_base));
  tmp &= ~LPC_MAC2_FULL_DUPLEX;
  writel(tmp, LPC_ENET_MAC2(pldat->net_base));
  tmp = readl(LPC_ENET_COMMAND(pldat->net_base));
  tmp &= ~LPC_COMMAND_FULLDUPLEX;
  writel(tmp, LPC_ENET_COMMAND(pldat->net_base));
  writel(LPC_IPGT_LOAD(0x12), LPC_ENET_IPGT(pldat->net_base));
 }

 if (pldat->speed == SPEED_100)
  writel(LPC_SUPP_SPEED, LPC_ENET_SUPP(pldat->net_base));
 else
  writel(0, LPC_ENET_SUPP(pldat->net_base));
}
