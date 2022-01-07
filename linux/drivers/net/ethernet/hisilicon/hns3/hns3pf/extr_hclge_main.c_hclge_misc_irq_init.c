
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vector_irq; } ;
struct hclge_dev {TYPE_2__ misc_vector; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int hclge_free_vector (struct hclge_dev*,int ) ;
 int hclge_get_misc_vector (struct hclge_dev*) ;
 int hclge_misc_irq_handle ;
 int request_irq (int ,int ,int ,char*,struct hclge_dev*) ;

__attribute__((used)) static int hclge_misc_irq_init(struct hclge_dev *hdev)
{
 int ret;

 hclge_get_misc_vector(hdev);


 ret = request_irq(hdev->misc_vector.vector_irq, hclge_misc_irq_handle,
     0, "hclge_misc", hdev);
 if (ret) {
  hclge_free_vector(hdev, 0);
  dev_err(&hdev->pdev->dev, "request misc irq(%d) fail\n",
   hdev->misc_vector.vector_irq);
 }

 return ret;
}
