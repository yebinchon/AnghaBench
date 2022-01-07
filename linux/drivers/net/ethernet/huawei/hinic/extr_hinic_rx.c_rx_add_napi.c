
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq {int napi; int netdev; } ;
struct hinic_dev {int rx_weight; } ;


 int napi_enable (int *) ;
 struct hinic_dev* netdev_priv (int ) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int rx_poll ;

__attribute__((used)) static void rx_add_napi(struct hinic_rxq *rxq)
{
 struct hinic_dev *nic_dev = netdev_priv(rxq->netdev);

 netif_napi_add(rxq->netdev, &rxq->napi, rx_poll, nic_dev->rx_weight);
 napi_enable(&rxq->napi);
}
