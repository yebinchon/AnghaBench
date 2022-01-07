
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int MAC_CONFIG_1_ADDR ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_sgmac_rxtx(struct xgene_enet_pdata *p, u32 bits, bool set)
{
 u32 data;

 data = xgene_enet_rd_mac(p, MAC_CONFIG_1_ADDR);

 if (set)
  data |= bits;
 else
  data &= ~bits;

 xgene_enet_wr_mac(p, MAC_CONFIG_1_ADDR, data);
}
