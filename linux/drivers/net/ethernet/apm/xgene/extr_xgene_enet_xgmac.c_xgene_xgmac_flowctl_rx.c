
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int AXGMAC_CONFIG_1 ;
 int HSTRCTLEN ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_xgmac_flowctl_rx(struct xgene_enet_pdata *pdata, bool enable)
{
 u32 data;

 data = xgene_enet_rd_mac(pdata, AXGMAC_CONFIG_1);

 if (enable)
  data |= HSTRCTLEN;
 else
  data &= ~HSTRCTLEN;

 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_1, data);
}
