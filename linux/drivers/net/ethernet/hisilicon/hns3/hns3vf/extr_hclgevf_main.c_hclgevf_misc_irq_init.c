
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vector_irq; } ;
struct hclgevf_dev {TYPE_2__ misc_vector; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int hclgevf_clear_event_cause (struct hclgevf_dev*,int ) ;
 int hclgevf_enable_vector (TYPE_2__*,int) ;
 int hclgevf_get_misc_vector (struct hclgevf_dev*) ;
 int hclgevf_misc_irq_handle ;
 int request_irq (int ,int ,int ,char*,struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_misc_irq_init(struct hclgevf_dev *hdev)
{
 int ret;

 hclgevf_get_misc_vector(hdev);

 ret = request_irq(hdev->misc_vector.vector_irq, hclgevf_misc_irq_handle,
     0, "hclgevf_cmd", hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev, "VF failed to request misc irq(%d)\n",
   hdev->misc_vector.vector_irq);
  return ret;
 }

 hclgevf_clear_event_cause(hdev, 0);


 hclgevf_enable_vector(&hdev->misc_vector, 1);

 return ret;
}
