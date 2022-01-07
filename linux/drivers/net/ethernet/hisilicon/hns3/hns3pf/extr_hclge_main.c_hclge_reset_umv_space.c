
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {scalar_t__ used_umv_num; } ;
struct hclge_dev {int num_alloc_vport; int max_umv_size; int num_req_vfs; int umv_mutex; scalar_t__ priv_umv_size; scalar_t__ share_umv_size; struct hclge_vport* vport; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hclge_reset_umv_space(struct hclge_dev *hdev)
{
 struct hclge_vport *vport;
 int i;

 for (i = 0; i < hdev->num_alloc_vport; i++) {
  vport = &hdev->vport[i];
  vport->used_umv_num = 0;
 }

 mutex_lock(&hdev->umv_mutex);
 hdev->share_umv_size = hdev->priv_umv_size +
   hdev->max_umv_size % (hdev->num_req_vfs + 2);
 mutex_unlock(&hdev->umv_mutex);
}
