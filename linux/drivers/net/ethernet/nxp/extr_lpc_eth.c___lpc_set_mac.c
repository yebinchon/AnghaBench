
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct netdata_local {int ndev; int net_base; } ;


 int LPC_ENET_SA0 (int ) ;
 int LPC_ENET_SA1 (int ) ;
 int LPC_ENET_SA2 (int ) ;
 int netdev_dbg (int ,char*,int*) ;
 int writel (int,int ) ;

__attribute__((used)) static void __lpc_set_mac(struct netdata_local *pldat, u8 *mac)
{
 u32 tmp;


 tmp = mac[0] | ((u32)mac[1] << 8);
 writel(tmp, LPC_ENET_SA2(pldat->net_base));
 tmp = mac[2] | ((u32)mac[3] << 8);
 writel(tmp, LPC_ENET_SA1(pldat->net_base));
 tmp = mac[4] | ((u32)mac[5] << 8);
 writel(tmp, LPC_ENET_SA0(pldat->net_base));

 netdev_dbg(pldat->ndev, "Ethernet MAC address %pM\n", mac);
}
