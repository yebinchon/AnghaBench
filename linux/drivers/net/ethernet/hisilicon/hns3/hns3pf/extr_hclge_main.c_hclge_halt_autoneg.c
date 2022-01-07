
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ support_autoneg; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_autoneg_en (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_halt_autoneg(struct hnae3_handle *handle, bool halt)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (hdev->hw.mac.support_autoneg && hdev->hw.mac.autoneg)
  return hclge_set_autoneg_en(hdev, !halt);

 return 0;
}
