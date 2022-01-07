
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int cdev; } ;


 int cdev_del (int *) ;

void cxl_guest_remove_chardev(struct cxl *adapter)
{
 cdev_del(&adapter->guest->cdev);
}
