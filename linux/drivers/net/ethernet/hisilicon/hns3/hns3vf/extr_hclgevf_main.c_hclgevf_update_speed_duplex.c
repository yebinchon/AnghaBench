
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int duplex; int speed; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;



void hclgevf_update_speed_duplex(struct hclgevf_dev *hdev, u32 speed,
     u8 duplex)
{
 hdev->hw.mac.speed = speed;
 hdev->hw.mac.duplex = duplex;
}
