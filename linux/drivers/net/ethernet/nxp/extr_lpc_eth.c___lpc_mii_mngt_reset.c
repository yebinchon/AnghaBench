
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_local {int net_base; } ;


 int LPC_ENET_MCFG (int ) ;
 int LPC_MCFG_CLOCK_HOST_DIV_28 ;
 int LPC_MCFG_CLOCK_SELECT (int ) ;
 int LPC_MCFG_RESET_MII_MGMT ;
 int writel (int ,int ) ;

__attribute__((used)) static int __lpc_mii_mngt_reset(struct netdata_local *pldat)
{

 writel(LPC_MCFG_RESET_MII_MGMT, LPC_ENET_MCFG(pldat->net_base));


 writel(LPC_MCFG_CLOCK_SELECT(LPC_MCFG_CLOCK_HOST_DIV_28),
        LPC_ENET_MCFG(pldat->net_base));

 return 0;
}
