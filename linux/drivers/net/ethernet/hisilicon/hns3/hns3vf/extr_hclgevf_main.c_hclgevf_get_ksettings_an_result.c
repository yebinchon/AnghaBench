
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_3__ {int duplex; int speed; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;


 int AUTONEG_DISABLE ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_get_ksettings_an_result(struct hnae3_handle *handle,
         u8 *auto_neg, u32 *speed,
         u8 *duplex)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 if (speed)
  *speed = hdev->hw.mac.speed;
 if (duplex)
  *duplex = hdev->hw.mac.duplex;
 if (auto_neg)
  *auto_neg = AUTONEG_DISABLE;
}
