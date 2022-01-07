
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {TYPE_1__* mac_ops; } ;
struct TYPE_2__ {int (* enable_tx_pause ) (struct xgene_enet_pdata*,int) ;} ;


 int TX_FLOW_EN ;
 int stub1 (struct xgene_enet_pdata*,int) ;
 int xgene_sgmac_rxtx (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_sgmac_flowctl_tx(struct xgene_enet_pdata *p, bool enable)
{
 xgene_sgmac_rxtx(p, TX_FLOW_EN, enable);

 p->mac_ops->enable_tx_pause(p, enable);
}
