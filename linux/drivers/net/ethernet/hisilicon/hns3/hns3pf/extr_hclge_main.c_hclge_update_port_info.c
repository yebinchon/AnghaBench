
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_mac {scalar_t__ media_type; scalar_t__ speed_type; int speed; } ;
struct TYPE_4__ {struct hclge_mac mac; } ;
struct hclge_dev {int support_sfp_query; TYPE_1__* pdev; TYPE_2__ hw; } ;
struct TYPE_3__ {int revision; } ;


 int EOPNOTSUPP ;
 int HCLGE_MAC_FULL ;
 int HCLGE_MAC_SPEED_UNKNOWN ;
 scalar_t__ HNAE3_MEDIA_TYPE_COPPER ;
 scalar_t__ QUERY_ACTIVE_SPEED ;
 int hclge_cfg_mac_speed_dup (struct hclge_dev*,int,int ) ;
 int hclge_get_sfp_info (struct hclge_dev*,struct hclge_mac*) ;
 int hclge_get_sfp_speed (struct hclge_dev*,int*) ;
 int hclge_update_port_capability (struct hclge_mac*) ;

__attribute__((used)) static int hclge_update_port_info(struct hclge_dev *hdev)
{
 struct hclge_mac *mac = &hdev->hw.mac;
 int speed = HCLGE_MAC_SPEED_UNKNOWN;
 int ret;


 if (mac->media_type == HNAE3_MEDIA_TYPE_COPPER)
  return 0;


 if (!hdev->support_sfp_query)
  return 0;

 if (hdev->pdev->revision >= 0x21)
  ret = hclge_get_sfp_info(hdev, mac);
 else
  ret = hclge_get_sfp_speed(hdev, &speed);

 if (ret == -EOPNOTSUPP) {
  hdev->support_sfp_query = 0;
  return ret;
 } else if (ret) {
  return ret;
 }

 if (hdev->pdev->revision >= 0x21) {
  if (mac->speed_type == QUERY_ACTIVE_SPEED) {
   hclge_update_port_capability(mac);
   return 0;
  }
  return hclge_cfg_mac_speed_dup(hdev, mac->speed,
            HCLGE_MAC_FULL);
 } else {
  if (speed == HCLGE_MAC_SPEED_UNKNOWN)
   return 0;


  return hclge_cfg_mac_speed_dup(hdev, speed, HCLGE_MAC_FULL);
 }
}
