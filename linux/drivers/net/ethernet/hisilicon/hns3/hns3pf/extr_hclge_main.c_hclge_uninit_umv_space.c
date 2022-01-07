
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {scalar_t__ max_umv_size; int umv_mutex; } ;


 int hclge_set_umv_space (struct hclge_dev*,scalar_t__,int *,int) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int hclge_uninit_umv_space(struct hclge_dev *hdev)
{
 int ret;

 if (hdev->max_umv_size > 0) {
  ret = hclge_set_umv_space(hdev, hdev->max_umv_size, ((void*)0),
       0);
  if (ret)
   return ret;
  hdev->max_umv_size = 0;
 }
 mutex_destroy(&hdev->umv_mutex);

 return 0;
}
