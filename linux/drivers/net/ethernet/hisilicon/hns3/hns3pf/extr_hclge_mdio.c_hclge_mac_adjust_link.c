
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* phydev; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ link; int speed; int duplex; } ;


 int hclge_cfg_flowctrl (struct hclge_dev*) ;
 int hclge_cfg_mac_speed_dup (struct hclge_dev*,int,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static void hclge_mac_adjust_link(struct net_device *netdev)
{
 struct hnae3_handle *h = *((void **)netdev_priv(netdev));
 struct hclge_vport *vport = hclge_get_vport(h);
 struct hclge_dev *hdev = vport->back;
 int duplex, speed;
 int ret;


 if (netdev->phydev->link == 0)
  return;

 speed = netdev->phydev->speed;
 duplex = netdev->phydev->duplex;

 ret = hclge_cfg_mac_speed_dup(hdev, speed, duplex);
 if (ret)
  netdev_err(netdev, "failed to adjust link.\n");

 ret = hclge_cfg_flowctrl(hdev);
 if (ret)
  netdev_err(netdev, "failed to configure flow control.\n");
}
