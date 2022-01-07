
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hclge_dev {scalar_t__ wanted_umv_size; int max_umv_size; int priv_umv_size; int num_req_vfs; int share_umv_size; int umv_mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,scalar_t__,scalar_t__) ;
 int hclge_set_umv_space (struct hclge_dev*,scalar_t__,scalar_t__*,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hclge_init_umv_space(struct hclge_dev *hdev)
{
 u16 allocated_size = 0;
 int ret;

 ret = hclge_set_umv_space(hdev, hdev->wanted_umv_size, &allocated_size,
      1);
 if (ret)
  return ret;

 if (allocated_size < hdev->wanted_umv_size)
  dev_warn(&hdev->pdev->dev,
    "Alloc umv space failed, want %d, get %d\n",
    hdev->wanted_umv_size, allocated_size);

 mutex_init(&hdev->umv_mutex);
 hdev->max_umv_size = allocated_size;




 hdev->priv_umv_size = hdev->max_umv_size / (hdev->num_req_vfs + 2);
 hdev->share_umv_size = hdev->priv_umv_size +
   hdev->max_umv_size % (hdev->num_req_vfs + 2);

 return 0;
}
