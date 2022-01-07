
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enclosure_device {int components; int edev; int * cb; TYPE_1__* component; int node; } ;
struct TYPE_2__ {int number; int cdev; } ;


 int container_list_lock ;
 int device_unregister (int *) ;
 int enclosure_null_callbacks ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void enclosure_unregister(struct enclosure_device *edev)
{
 int i;

 mutex_lock(&container_list_lock);
 list_del(&edev->node);
 mutex_unlock(&container_list_lock);

 for (i = 0; i < edev->components; i++)
  if (edev->component[i].number != -1)
   device_unregister(&edev->component[i].cdev);


 edev->cb = &enclosure_null_callbacks;
 device_unregister(&edev->edev);
}
