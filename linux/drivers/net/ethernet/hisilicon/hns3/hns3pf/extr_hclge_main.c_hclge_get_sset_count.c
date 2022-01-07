
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae3_handle {int flags; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_5__ {scalar_t__ speed; scalar_t__ phydev; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct hclge_dev {TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int revision; } ;


 int ARRAY_SIZE (int ) ;
 int ETH_SS_STATS ;
 int ETH_SS_TEST ;
 int HCLGE_LOOPBACK_TEST_FLAGS ;
 scalar_t__ HCLGE_MAC_SPEED_100M ;
 scalar_t__ HCLGE_MAC_SPEED_10M ;
 scalar_t__ HCLGE_MAC_SPEED_1G ;
 int HNAE3_SUPPORT_APP_LOOPBACK ;
 int HNAE3_SUPPORT_PHY_LOOPBACK ;
 int HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK ;
 int HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK ;
 int g_mac_stats_string ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_tqps_get_sset_count (struct hnae3_handle*,int) ;

__attribute__((used)) static int hclge_get_sset_count(struct hnae3_handle *handle, int stringset)
{





 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int count = 0;






 if (stringset == ETH_SS_TEST) {

  handle->flags = (handle->flags & (~(HNAE3_SUPPORT_APP_LOOPBACK | HNAE3_SUPPORT_PHY_LOOPBACK | HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK | HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK)));
  if (hdev->pdev->revision >= 0x21 ||
      hdev->hw.mac.speed == HCLGE_MAC_SPEED_10M ||
      hdev->hw.mac.speed == HCLGE_MAC_SPEED_100M ||
      hdev->hw.mac.speed == HCLGE_MAC_SPEED_1G) {
   count += 1;
   handle->flags |= HNAE3_SUPPORT_APP_LOOPBACK;
  }

  count += 2;
  handle->flags |= HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK;
  handle->flags |= HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK;

  if (hdev->hw.mac.phydev) {
   count += 1;
   handle->flags |= HNAE3_SUPPORT_PHY_LOOPBACK;
  }

 } else if (stringset == ETH_SS_STATS) {
  count = ARRAY_SIZE(g_mac_stats_string) +
   hclge_tqps_get_sset_count(handle, stringset);
 }

 return count;
}
