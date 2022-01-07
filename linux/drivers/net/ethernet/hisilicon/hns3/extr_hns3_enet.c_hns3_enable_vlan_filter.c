
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {struct hnae3_handle* ae_handle; } ;
struct hnae3_handle {int netdev_flags; TYPE_3__* ae_algo; TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* enable_vlan_filter ) (struct hnae3_handle*,int) ;} ;
struct TYPE_4__ {int revision; } ;


 int HNAE3_VLAN_FLTR ;
 int netdev_info (struct net_device*,char*,char*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int) ;

void hns3_enable_vlan_filter(struct net_device *netdev, bool enable)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = priv->ae_handle;
 bool last_state;

 if (h->pdev->revision >= 0x21 && h->ae_algo->ops->enable_vlan_filter) {
  last_state = h->netdev_flags & HNAE3_VLAN_FLTR ? 1 : 0;
  if (enable != last_state) {
   netdev_info(netdev,
        "%s vlan filter\n",
        enable ? "enable" : "disable");
   h->ae_algo->ops->enable_vlan_filter(h, enable);
  }
 }
}
