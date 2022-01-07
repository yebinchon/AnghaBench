
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int * notif_cb; int notif_work; int * rx_cb; int rx_work; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void mei_cldev_unregister_callbacks(struct mei_cl_device *cldev)
{
 if (cldev->rx_cb) {
  cancel_work_sync(&cldev->rx_work);
  cldev->rx_cb = ((void*)0);
 }

 if (cldev->notif_cb) {
  cancel_work_sync(&cldev->notif_work);
  cldev->notif_cb = ((void*)0);
 }
}
