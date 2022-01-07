
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* phydev; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct hclge_dev {TYPE_3__ hw; int state; } ;
struct TYPE_4__ {scalar_t__ state; unsigned int link; } ;


 int HCLGE_STATE_DOWN ;
 scalar_t__ PHY_RUNNING ;
 unsigned int hclge_get_mac_link_status (struct hclge_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hclge_get_mac_phy_link(struct hclge_dev *hdev)
{
 unsigned int mac_state;
 int link_stat;

 if (test_bit(HCLGE_STATE_DOWN, &hdev->state))
  return 0;

 mac_state = hclge_get_mac_link_status(hdev);

 if (hdev->hw.mac.phydev) {
  if (hdev->hw.mac.phydev->state == PHY_RUNNING)
   link_stat = mac_state &
    hdev->hw.mac.phydev->link;
  else
   link_stat = 0;

 } else {
  link_stat = mac_state;
 }

 return !!link_stat;
}
