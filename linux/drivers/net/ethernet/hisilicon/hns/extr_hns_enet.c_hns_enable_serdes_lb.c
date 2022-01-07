
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; TYPE_1__* dev; } ;
struct hnae_ae_ops {int (* set_loopback ) (struct hnae_handle*,int ,int) ;int (* start ) (struct hnae_handle*) ;int (* adjust_link ) (struct hnae_handle*,int,int) ;} ;
struct TYPE_2__ {struct hnae_ae_ops* ops; } ;


 int MAC_INTERNALLOOP_SERDES ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int mdelay (int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int ,int) ;
 int stub2 (struct hnae_handle*) ;
 int stub3 (struct hnae_handle*,int,int) ;

__attribute__((used)) static int hns_enable_serdes_lb(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 struct hnae_ae_ops *ops = h->dev->ops;
 int speed, duplex;
 int ret;

 ret = ops->set_loopback(h, MAC_INTERNALLOOP_SERDES, 1);
 if (ret)
  return ret;

 ret = ops->start ? ops->start(h) : 0;
 if (ret)
  return ret;


 if (h->phy_if != PHY_INTERFACE_MODE_XGMII)
  speed = 1000;
 else
  speed = 10000;
 duplex = 1;

 ops->adjust_link(h, speed, duplex);


 mdelay(300);

 return 0;
}
