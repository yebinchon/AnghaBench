
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct netdata_local {int net_base; } ;


 int LPC_ENET_SA0 (int ) ;
 int LPC_ENET_SA1 (int ) ;
 int LPC_ENET_SA2 (int ) ;
 int readl (int ) ;

__attribute__((used)) static void __lpc_get_mac(struct netdata_local *pldat, u8 *mac)
{
 u32 tmp;


 tmp = readl(LPC_ENET_SA2(pldat->net_base));
 mac[0] = tmp & 0xFF;
 mac[1] = tmp >> 8;
 tmp = readl(LPC_ENET_SA1(pldat->net_base));
 mac[2] = tmp & 0xFF;
 mac[3] = tmp >> 8;
 tmp = readl(LPC_ENET_SA0(pldat->net_base));
 mac[4] = tmp & 0xFF;
 mac[5] = tmp >> 8;
}
