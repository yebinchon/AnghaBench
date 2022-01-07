
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int phy_start (struct phy_device*) ;

void hclge_mac_start_phy(struct hclge_dev *hdev)
{
 struct phy_device *phydev = hdev->hw.mac.phydev;

 if (!phydev)
  return;

 phy_start(phydev);
}
