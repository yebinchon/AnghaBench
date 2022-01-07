
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int num_msi; int* vector_irq; } ;


 int EINVAL ;

__attribute__((used)) static int hclgevf_get_vector_index(struct hclgevf_dev *hdev, int vector)
{
 int i;

 for (i = 0; i < hdev->num_msi; i++)
  if (vector == hdev->vector_irq[i])
   return i;

 return -EINVAL;
}
