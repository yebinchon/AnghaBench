
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; int enet_ver; } ;
struct hnae_ae_ops {int (* get_rss_key_size ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static u32
hns_get_rss_key_size(struct net_device *netdev)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_ae_ops *ops;

 if (AE_IS_VER1(priv->enet_ver)) {
  netdev_err(netdev,
      "RSS feature is not supported on this hardware\n");
  return 0;
 }

 ops = priv->ae_handle->dev->ops;
 return ops->get_rss_key_size(priv->ae_handle);
}
