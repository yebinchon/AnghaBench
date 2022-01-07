
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int id_control; int id; } ;


 int hl_devs_idr ;
 int hl_devs_idr_lock ;
 int idr_remove (int *,int ) ;
 int kfree (struct hl_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void destroy_hdev(struct hl_device *hdev)
{

 mutex_lock(&hl_devs_idr_lock);
 idr_remove(&hl_devs_idr, hdev->id);
 idr_remove(&hl_devs_idr, hdev->id_control);
 mutex_unlock(&hl_devs_idr_lock);

 kfree(hdev);
}
