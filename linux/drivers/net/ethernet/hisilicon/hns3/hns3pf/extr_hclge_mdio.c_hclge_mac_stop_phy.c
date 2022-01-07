
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct hclge_dev {TYPE_2__* vport; } ;
struct TYPE_3__ {struct net_device* netdev; } ;
struct TYPE_4__ {TYPE_1__ nic; } ;


 int phy_stop (struct phy_device*) ;

void hclge_mac_stop_phy(struct hclge_dev *hdev)
{
 struct net_device *netdev = hdev->vport[0].nic.netdev;
 struct phy_device *phydev = netdev->phydev;

 if (!phydev)
  return;

 phy_stop(phydev);
}
