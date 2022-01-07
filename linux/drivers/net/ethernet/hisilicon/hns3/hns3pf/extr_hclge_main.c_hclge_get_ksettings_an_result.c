
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {int autoneg; int duplex; int speed; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_get_ksettings_an_result(struct hnae3_handle *handle,
       u8 *auto_neg, u32 *speed, u8 *duplex)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (speed)
  *speed = hdev->hw.mac.speed;
 if (duplex)
  *duplex = hdev->hw.mac.duplex;
 if (auto_neg)
  *auto_neg = hdev->hw.mac.autoneg;
}
