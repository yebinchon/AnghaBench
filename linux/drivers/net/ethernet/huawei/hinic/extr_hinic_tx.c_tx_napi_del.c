
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq {int napi; } ;


 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void tx_napi_del(struct hinic_txq *txq)
{
 napi_disable(&txq->napi);
 netif_napi_del(&txq->napi);
}
