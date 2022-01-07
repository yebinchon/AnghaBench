
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cio2_device {int lock; int media_dev; int v4l2_dev; int notifier; } ;


 int cio2_fbpt_exit_dummy (struct cio2_device*) ;
 int cio2_queues_exit (struct cio2_device*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int mutex_destroy (int *) ;
 struct cio2_device* pci_get_drvdata (struct pci_dev*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void cio2_pci_remove(struct pci_dev *pci_dev)
{
 struct cio2_device *cio2 = pci_get_drvdata(pci_dev);

 media_device_unregister(&cio2->media_dev);
 v4l2_async_notifier_unregister(&cio2->notifier);
 v4l2_async_notifier_cleanup(&cio2->notifier);
 cio2_queues_exit(cio2);
 cio2_fbpt_exit_dummy(cio2);
 v4l2_device_unregister(&cio2->v4l2_dev);
 media_device_cleanup(&cio2->media_dev);
 mutex_destroy(&cio2->lock);
}
