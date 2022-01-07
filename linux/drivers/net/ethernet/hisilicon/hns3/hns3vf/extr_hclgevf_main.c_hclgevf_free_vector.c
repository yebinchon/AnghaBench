
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_dev {scalar_t__* vector_status; int num_msi_left; int num_msi_used; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HCLGEVF_INVALID_VPORT ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static void hclgevf_free_vector(struct hclgevf_dev *hdev, int vector_id)
{
 if (hdev->vector_status[vector_id] == HCLGEVF_INVALID_VPORT) {
  dev_warn(&hdev->pdev->dev,
    "vector(vector_id %d) has been freed.\n", vector_id);
  return;
 }

 hdev->vector_status[vector_id] = HCLGEVF_INVALID_VPORT;
 hdev->num_msi_left += 1;
 hdev->num_msi_used -= 1;
}
