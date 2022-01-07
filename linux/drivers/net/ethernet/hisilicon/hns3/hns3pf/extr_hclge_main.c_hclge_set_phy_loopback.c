
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__* pdev; TYPE_2__ hw; } ;
struct TYPE_6__ {int dev; } ;


 int ENOTSUPP ;
 int TRUE ;
 int dev_err (int *,char*,...) ;
 int hclge_cfg_mac_mode (struct hclge_dev*,int) ;
 int hclge_disable_phy_loopback (struct hclge_dev*,struct phy_device*) ;
 int hclge_enable_phy_loopback (struct hclge_dev*,struct phy_device*) ;
 int hclge_mac_phy_link_status_wait (struct hclge_dev*,int,int ) ;

__attribute__((used)) static int hclge_set_phy_loopback(struct hclge_dev *hdev, bool en)
{
 struct phy_device *phydev = hdev->hw.mac.phydev;
 int ret;

 if (!phydev)
  return -ENOTSUPP;

 if (en)
  ret = hclge_enable_phy_loopback(hdev, phydev);
 else
  ret = hclge_disable_phy_loopback(hdev, phydev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "set phy loopback fail, ret = %d\n", ret);
  return ret;
 }

 hclge_cfg_mac_mode(hdev, en);

 ret = hclge_mac_phy_link_status_wait(hdev, en, TRUE);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "phy loopback config mac mode timeout\n");

 return ret;
}
