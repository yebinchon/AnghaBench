
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; TYPE_2__* dev; } ;
typedef enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* start ) (struct hnae_handle*) ;int (* adjust_link ) (struct hnae_handle*,int,int) ;} ;


 int NIC_LB_TEST_WAIT_PHY_LINK_TIME ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int __lb_setup (struct net_device*,int) ;
 int hns_nic_net_reset (struct net_device*) ;
 int msleep (int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*) ;
 int stub2 (struct hnae_handle*,int,int) ;

__attribute__((used)) static int __lb_up(struct net_device *ndev,
     enum hnae_loop loop_mode)
{

 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 int speed, duplex;
 int ret;

 hns_nic_net_reset(ndev);

 ret = __lb_setup(ndev, loop_mode);
 if (ret)
  return ret;

 msleep(200);

 ret = h->dev->ops->start ? h->dev->ops->start(h) : 0;
 if (ret)
  return ret;


 if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
  speed = 1000;
 else
  speed = 10000;
 duplex = 1;

 h->dev->ops->adjust_link(h, speed, duplex);


 msleep(300);

 return 0;
}
