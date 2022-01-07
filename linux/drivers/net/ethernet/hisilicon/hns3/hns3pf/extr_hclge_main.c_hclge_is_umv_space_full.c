
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {scalar_t__ used_umv_num; struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ priv_umv_size; scalar_t__ share_umv_size; int umv_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool hclge_is_umv_space_full(struct hclge_vport *vport)
{
 struct hclge_dev *hdev = vport->back;
 bool is_full;

 mutex_lock(&hdev->umv_mutex);
 is_full = (vport->used_umv_num >= hdev->priv_umv_size &&
     hdev->share_umv_size == 0);
 mutex_unlock(&hdev->umv_mutex);

 return is_full;
}
