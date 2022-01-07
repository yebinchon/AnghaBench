
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hclge_dev {TYPE_2__* vport; TYPE_1__* pdev; int tc_max; } ;
struct TYPE_4__ {int alloc_tqps; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int HNAE3_MAX_USER_PRIO ;
 int dev_err (int *,char*,int,int ,...) ;

__attribute__((used)) static int hclge_dcb_common_validate(struct hclge_dev *hdev, u8 num_tc,
         u8 *prio_tc)
{
 int i;

 if (num_tc > hdev->tc_max) {
  dev_err(&hdev->pdev->dev,
   "tc num checking failed, %u > tc_max(%u)\n",
   num_tc, hdev->tc_max);
  return -EINVAL;
 }

 for (i = 0; i < HNAE3_MAX_USER_PRIO; i++) {
  if (prio_tc[i] >= num_tc) {
   dev_err(&hdev->pdev->dev,
    "prio_tc[%u] checking failed, %u >= num_tc(%u)\n",
    i, prio_tc[i], num_tc);
   return -EINVAL;
  }
 }

 if (num_tc > hdev->vport[0].alloc_tqps) {
  dev_err(&hdev->pdev->dev,
   "allocated tqp checking failed, %u > tqp(%u)\n",
   num_tc, hdev->vport[0].alloc_tqps);
  return -EINVAL;
 }

 return 0;
}
