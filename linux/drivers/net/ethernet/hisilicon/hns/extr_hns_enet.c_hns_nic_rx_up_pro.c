
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;
struct hns_nic_ring_data {TYPE_1__ napi; } ;


 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int napi_gro_receive (TYPE_1__*,struct sk_buff*) ;

__attribute__((used)) static void hns_nic_rx_up_pro(struct hns_nic_ring_data *ring_data,
         struct sk_buff *skb)
{
 struct net_device *ndev = ring_data->napi.dev;

 skb->protocol = eth_type_trans(skb, ndev);
 (void)napi_gro_receive(&ring_data->napi, skb);
}
