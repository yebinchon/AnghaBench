
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_3__* ring_data; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_8__ {int irq; } ;
struct TYPE_7__ {TYPE_4__* ring; int napi; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* toggle_ring_irq ) (TYPE_4__*,int ) ;} ;


 int enable_irq (int ) ;
 int napi_enable (int *) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static int hns_nic_ring_open(struct net_device *netdev, int idx)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;

 napi_enable(&priv->ring_data[idx].napi);

 enable_irq(priv->ring_data[idx].ring->irq);
 h->dev->ops->toggle_ring_irq(priv->ring_data[idx].ring, 0);

 return 0;
}
