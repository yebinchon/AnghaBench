
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; } ;
struct hnae_ae_ops {int (* get_regs ) (TYPE_2__*,void*) ;} ;
struct ethtool_regs {int version; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;


 int HNS_CHIP_VERSION ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*,void*) ;

__attribute__((used)) static void hns_get_regs(struct net_device *net_dev, struct ethtool_regs *cmd,
    void *data)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_ae_ops *ops;

 ops = priv->ae_handle->dev->ops;

 cmd->version = HNS_CHIP_VERSION;
 if (!ops->get_regs) {
  netdev_err(net_dev, "ops->get_regs is null!\n");
  return;
 }
 ops->get_regs(priv->ae_handle, data);
}
