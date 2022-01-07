
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int MAC_CONFIG_1_ADDR ;
 int RX_FLOW_EN ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_gmac_flowctl_rx(struct xgene_enet_pdata *pdata, bool enable)
{
 u32 data;

 data = xgene_enet_rd_mac(pdata, MAC_CONFIG_1_ADDR);

 if (enable)
  data |= RX_FLOW_EN;
 else
  data &= ~RX_FLOW_EN;

 xgene_enet_wr_mac(pdata, MAC_CONFIG_1_ADDR, data);
}
