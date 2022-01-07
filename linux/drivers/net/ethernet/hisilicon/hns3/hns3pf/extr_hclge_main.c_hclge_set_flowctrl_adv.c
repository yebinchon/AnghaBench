
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int dummy; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int phy_set_asym_pause (struct phy_device*,int ,int ) ;

__attribute__((used)) static void hclge_set_flowctrl_adv(struct hclge_dev *hdev, u32 rx_en, u32 tx_en)
{
 struct phy_device *phydev = hdev->hw.mac.phydev;

 if (!phydev)
  return;

 phy_set_asym_pause(phydev, rx_en, tx_en);
}
