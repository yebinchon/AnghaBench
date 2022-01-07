
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq {int napi; } ;


 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void rx_del_napi(struct hinic_rxq *rxq)
{
 napi_disable(&rxq->napi);
 netif_napi_del(&rxq->napi);
}
