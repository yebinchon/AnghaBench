
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int dummy; } ;


 int TX_EN ;
 int xgene_sgmac_rxtx (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_sgmac_tx_enable(struct xgene_enet_pdata *p)
{
 xgene_sgmac_rxtx(p, TX_EN, 1);
}
