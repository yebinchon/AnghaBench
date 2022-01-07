
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_promisc_mode ) (struct hnae_handle*,int) ;} ;


 int IFF_PROMISC ;
 scalar_t__ __dev_uc_sync (struct net_device*,int ,int ) ;
 int hns_nic_uc_sync ;
 int hns_nic_uc_unsync ;
 int hns_set_multicast_list (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int) ;
 int stub2 (struct hnae_handle*,int) ;

__attribute__((used)) static void hns_nic_set_rx_mode(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;

 if (h->dev->ops->set_promisc_mode) {
  if (ndev->flags & IFF_PROMISC)
   h->dev->ops->set_promisc_mode(h, 1);
  else
   h->dev->ops->set_promisc_mode(h, 0);
 }

 hns_set_multicast_list(ndev);

 if (__dev_uc_sync(ndev, hns_nic_uc_sync, hns_nic_uc_unsync))
  netdev_err(ndev, "sync uc address fail\n");
}
