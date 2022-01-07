
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int atomic_t ;


 int device_for_each_child_reverse (struct device*,int **,int ) ;
 int kfree (int *) ;
 int mfd_remove_devices_fn ;

void mfd_remove_devices(struct device *parent)
{
 atomic_t *cnts = ((void*)0);

 device_for_each_child_reverse(parent, &cnts, mfd_remove_devices_fn);
 kfree(cnts);
}
