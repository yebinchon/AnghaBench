
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* add_uc_addr ) (struct hnae_handle*,unsigned char const*) ;} ;


 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,unsigned char const*) ;

__attribute__((used)) static int hns_nic_uc_sync(struct net_device *netdev, const unsigned char *addr)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;

 if (h->dev->ops->add_uc_addr)
  return h->dev->ops->add_uc_addr(h, addr);

 return 0;
}
