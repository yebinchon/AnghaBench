
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xgene_enet_pdata {int rxq_cnt; int cq_cnt; int ndev; TYPE_2__** tx_ring; TYPE_3__** rx_ring; } ;
struct napi_struct {int dummy; } ;
struct TYPE_6__ {struct napi_struct napi; } ;
struct TYPE_5__ {TYPE_1__* cp_ring; } ;
struct TYPE_4__ {struct napi_struct napi; } ;


 int NAPI_POLL_WEIGHT ;
 int netif_napi_add (int ,struct napi_struct*,int ,int ) ;
 int xgene_enet_napi ;

__attribute__((used)) static void xgene_enet_napi_add(struct xgene_enet_pdata *pdata)
{
 struct napi_struct *napi;
 int i;

 for (i = 0; i < pdata->rxq_cnt; i++) {
  napi = &pdata->rx_ring[i]->napi;
  netif_napi_add(pdata->ndev, napi, xgene_enet_napi,
          NAPI_POLL_WEIGHT);
 }

 for (i = 0; i < pdata->cq_cnt; i++) {
  napi = &pdata->tx_ring[i]->cp_ring->napi;
  netif_napi_add(pdata->ndev, napi, xgene_enet_napi,
          NAPI_POLL_WEIGHT);
 }
}
