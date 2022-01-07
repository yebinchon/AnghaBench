
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {scalar_t__ used_umv_num; struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ priv_umv_size; scalar_t__ share_umv_size; int umv_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hclge_update_umv_space(struct hclge_vport *vport, bool is_free)
{
 struct hclge_dev *hdev = vport->back;

 mutex_lock(&hdev->umv_mutex);
 if (is_free) {
  if (vport->used_umv_num > hdev->priv_umv_size)
   hdev->share_umv_size++;

  if (vport->used_umv_num > 0)
   vport->used_umv_num--;
 } else {
  if (vport->used_umv_num >= hdev->priv_umv_size &&
      hdev->share_umv_size > 0)
   hdev->share_umv_size--;
  vport->used_umv_num++;
 }
 mutex_unlock(&hdev->umv_mutex);
}
