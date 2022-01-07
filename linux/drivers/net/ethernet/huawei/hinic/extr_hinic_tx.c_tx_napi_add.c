
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq {int napi; int netdev; } ;


 int free_tx_poll ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int) ;

__attribute__((used)) static void tx_napi_add(struct hinic_txq *txq, int weight)
{
 netif_napi_add(txq->netdev, &txq->napi, free_tx_poll, weight);
 napi_enable(&txq->napi);
}
