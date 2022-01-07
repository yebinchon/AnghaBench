
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; int enet_ver; } ;
struct hnae_ae_ops {int (* get_rss ) (TYPE_2__*,int *,int *,int *) ;} ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*,int *,int *,int *) ;

__attribute__((used)) static int
hns_get_rss(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_ae_ops *ops;

 if (AE_IS_VER1(priv->enet_ver)) {
  netdev_err(netdev,
      "RSS feature is not supported on this hardware\n");
  return -EOPNOTSUPP;
 }

 ops = priv->ae_handle->dev->ops;

 if (!indir)
  return 0;

 return ops->get_rss(priv->ae_handle, indir, key, hfunc);
}
