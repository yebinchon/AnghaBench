
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct TYPE_4__ {int (* set_mtu ) (struct hnae3_handle*,int) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int drv ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*,int,int) ;
 int stub1 (struct hnae3_handle*,int) ;

__attribute__((used)) static int hns3_nic_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 int ret;

 if (hns3_nic_resetting(netdev))
  return -EBUSY;

 if (!h->ae_algo->ops->set_mtu)
  return -EOPNOTSUPP;

 netif_dbg(h, drv, netdev,
    "change mtu from %u to %d\n", netdev->mtu, new_mtu);

 ret = h->ae_algo->ops->set_mtu(h, new_mtu);
 if (ret)
  netdev_err(netdev, "failed to change MTU in hardware %d\n",
      ret);
 else
  netdev->mtu = new_mtu;

 return ret;
}
