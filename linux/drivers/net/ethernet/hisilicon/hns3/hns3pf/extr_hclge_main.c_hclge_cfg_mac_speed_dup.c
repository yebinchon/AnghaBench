
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int speed; scalar_t__ duplex; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int hclge_cfg_mac_speed_dup_hw (struct hclge_dev*,int,scalar_t__) ;
 scalar_t__ hclge_check_speed_dup (scalar_t__,int) ;

int hclge_cfg_mac_speed_dup(struct hclge_dev *hdev, int speed, u8 duplex)
{
 int ret;

 duplex = hclge_check_speed_dup(duplex, speed);
 if (hdev->hw.mac.speed == speed && hdev->hw.mac.duplex == duplex)
  return 0;

 ret = hclge_cfg_mac_speed_dup_hw(hdev, speed, duplex);
 if (ret)
  return ret;

 hdev->hw.mac.speed = speed;
 hdev->hw.mac.duplex = duplex;

 return 0;
}
