
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_1__* dev; } ;
struct hnae_ae_ops {int (* set_loopback ) (struct hnae_handle*,int ,int ) ;int (* stop ) (struct hnae_handle*) ;} ;
struct TYPE_2__ {struct hnae_ae_ops* ops; } ;


 int MAC_INTERNALLOOP_SERDES ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*) ;
 int stub2 (struct hnae_handle*,int ,int ) ;

__attribute__((used)) static void hns_disable_serdes_lb(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 struct hnae_ae_ops *ops = h->dev->ops;

 ops->stop(h);
 ops->set_loopback(h, MAC_INTERNALLOOP_SERDES, 0);
}
