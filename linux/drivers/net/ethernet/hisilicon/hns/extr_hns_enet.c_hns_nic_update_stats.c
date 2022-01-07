
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int stats; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* update_stats ) (struct hnae_handle*,int *) ;} ;


 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int *) ;

__attribute__((used)) static void hns_nic_update_stats(struct net_device *netdev)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;

 h->dev->ops->update_stats(h, &netdev->stats);
}
