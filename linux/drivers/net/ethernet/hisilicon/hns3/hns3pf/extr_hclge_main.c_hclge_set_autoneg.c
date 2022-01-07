
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_4__ {int support_autoneg; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__* pdev; TYPE_2__ hw; } ;
struct TYPE_6__ {int dev; } ;


 int EOPNOTSUPP ;
 int dev_err (int *,char*) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_autoneg_en (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_set_autoneg(struct hnae3_handle *handle, bool enable)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (!hdev->hw.mac.support_autoneg) {
  if (enable) {
   dev_err(&hdev->pdev->dev,
    "autoneg is not supported by current port\n");
   return -EOPNOTSUPP;
  } else {
   return 0;
  }
 }

 return hclge_set_autoneg_en(hdev, enable);
}
