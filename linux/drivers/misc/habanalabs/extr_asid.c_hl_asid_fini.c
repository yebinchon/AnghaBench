
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int asid_bitmap; int asid_mutex; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;

void hl_asid_fini(struct hl_device *hdev)
{
 mutex_destroy(&hdev->asid_mutex);
 kfree(hdev->asid_bitmap);
}
