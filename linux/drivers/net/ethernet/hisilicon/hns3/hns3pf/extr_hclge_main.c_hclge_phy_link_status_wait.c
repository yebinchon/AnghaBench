
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phy_device {int link; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__* pdev; TYPE_2__ hw; } ;
struct TYPE_6__ {int dev; } ;


 int HCLGE_LINK_STATUS_MS ;
 int HCLGE_PHY_LINK_STATUS_NUM ;
 int dev_err (int *,char*,int) ;
 int msleep (int ) ;
 int phy_read_status (struct phy_device*) ;

__attribute__((used)) static void hclge_phy_link_status_wait(struct hclge_dev *hdev,
           int link_ret)
{


 struct phy_device *phydev = hdev->hw.mac.phydev;
 int i = 0;
 int ret;

 do {
  ret = phy_read_status(phydev);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "phy update link status fail, ret = %d\n", ret);
   return;
  }

  if (phydev->link == link_ret)
   break;

  msleep(HCLGE_LINK_STATUS_MS);
 } while (++i < 200);
}
