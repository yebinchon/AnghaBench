
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int state; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_STATE_SERVICE_INITED ;
 int dev_err (struct device*,char*) ;
 int hclge_handle_all_hw_msix_error (struct hclge_dev*,unsigned long*) ;
 int test_bit (int ,int *) ;

int hclge_handle_hw_msix_error(struct hclge_dev *hdev,
          unsigned long *reset_requests)
{
 struct device *dev = &hdev->pdev->dev;

 if (!test_bit(HCLGE_STATE_SERVICE_INITED, &hdev->state)) {
  dev_err(dev,
   "Can't handle - MSIx error reported during dev init\n");
  return 0;
 }

 return hclge_handle_all_hw_msix_error(hdev, reset_requests);
}
