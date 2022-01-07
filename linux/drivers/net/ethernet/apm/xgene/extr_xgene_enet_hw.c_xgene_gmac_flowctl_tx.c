
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_enet_pdata {TYPE_1__* mac_ops; } ;
struct TYPE_2__ {int (* enable_tx_pause ) (struct xgene_enet_pdata*,int) ;} ;


 int MAC_CONFIG_1_ADDR ;
 int TX_FLOW_EN ;
 int stub1 (struct xgene_enet_pdata*,int) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_gmac_flowctl_tx(struct xgene_enet_pdata *pdata, bool enable)
{
 u32 data;

 data = xgene_enet_rd_mac(pdata, MAC_CONFIG_1_ADDR);

 if (enable)
  data |= TX_FLOW_EN;
 else
  data &= ~TX_FLOW_EN;

 xgene_enet_wr_mac(pdata, MAC_CONFIG_1_ADDR, data);

 pdata->mac_ops->enable_tx_pause(pdata, enable);
}
