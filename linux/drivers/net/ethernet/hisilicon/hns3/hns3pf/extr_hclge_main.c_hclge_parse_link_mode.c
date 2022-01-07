
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ media_type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 scalar_t__ HNAE3_MEDIA_TYPE_BACKPLANE ;
 scalar_t__ HNAE3_MEDIA_TYPE_COPPER ;
 scalar_t__ HNAE3_MEDIA_TYPE_FIBER ;
 int hclge_parse_backplane_link_mode (struct hclge_dev*,scalar_t__) ;
 int hclge_parse_copper_link_mode (struct hclge_dev*,scalar_t__) ;
 int hclge_parse_fiber_link_mode (struct hclge_dev*,scalar_t__) ;

__attribute__((used)) static void hclge_parse_link_mode(struct hclge_dev *hdev, u8 speed_ability)
{
 u8 media_type = hdev->hw.mac.media_type;

 if (media_type == HNAE3_MEDIA_TYPE_FIBER)
  hclge_parse_fiber_link_mode(hdev, speed_ability);
 else if (media_type == HNAE3_MEDIA_TYPE_COPPER)
  hclge_parse_copper_link_mode(hdev, speed_ability);
 else if (media_type == HNAE3_MEDIA_TYPE_BACKPLANE)
  hclge_parse_backplane_link_mode(hdev, speed_ability);
}
