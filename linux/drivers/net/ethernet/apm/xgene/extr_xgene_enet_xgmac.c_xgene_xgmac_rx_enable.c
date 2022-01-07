
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int AXGMAC_CONFIG_1 ;
 int HSTRFEN ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_xgmac_rx_enable(struct xgene_enet_pdata *pdata)
{
 u32 data;

 data = xgene_enet_rd_mac(pdata, AXGMAC_CONFIG_1);
 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_1, data | HSTRFEN);
}
