
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_enet_pdata {TYPE_1__* mac_ops; } ;
struct TYPE_2__ {int (* enable_tx_pause ) (struct xgene_enet_pdata*,int) ;} ;


 int AXGMAC_CONFIG_1 ;
 int HSTTCTLEN ;
 int stub1 (struct xgene_enet_pdata*,int) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_xgmac_flowctl_tx(struct xgene_enet_pdata *pdata, bool enable)
{
 u32 data;

 data = xgene_enet_rd_mac(pdata, AXGMAC_CONFIG_1);

 if (enable)
  data |= HSTTCTLEN;
 else
  data &= ~HSTTCTLEN;

 xgene_enet_wr_mac(pdata, AXGMAC_CONFIG_1, data);

 pdata->mac_ops->enable_tx_pause(pdata, enable);
}
