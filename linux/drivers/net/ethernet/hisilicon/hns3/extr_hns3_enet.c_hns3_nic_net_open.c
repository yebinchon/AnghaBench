
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {int ae_handle; } ;
struct hnae3_knic_private_info {int * prio_tc; } ;
struct hnae3_handle {TYPE_2__* ae_algo; struct hnae3_knic_private_info kinfo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_timer_task ) (int ,int) ;} ;


 int EBUSY ;
 int HNAE3_MAX_USER_PRIO ;
 int drv ;
 int hns3_config_xps (struct hns3_nic_priv*) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_nic_net_up (struct net_device*) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int hns3_nic_set_real_num_queue (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int hns3_nic_net_open(struct net_device *netdev)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = hns3_get_handle(netdev);
 struct hnae3_knic_private_info *kinfo;
 int i, ret;

 if (hns3_nic_resetting(netdev))
  return -EBUSY;

 netif_carrier_off(netdev);

 ret = hns3_nic_set_real_num_queue(netdev);
 if (ret)
  return ret;

 ret = hns3_nic_net_up(netdev);
 if (ret) {
  netdev_err(netdev, "net up fail, ret=%d!\n", ret);
  return ret;
 }

 kinfo = &h->kinfo;
 for (i = 0; i < HNAE3_MAX_USER_PRIO; i++)
  netdev_set_prio_tc_map(netdev, i, kinfo->prio_tc[i]);

 if (h->ae_algo->ops->set_timer_task)
  h->ae_algo->ops->set_timer_task(priv->ae_handle, 1);

 hns3_config_xps(priv);

 netif_dbg(h, drv, netdev, "net open\n");

 return 0;
}
