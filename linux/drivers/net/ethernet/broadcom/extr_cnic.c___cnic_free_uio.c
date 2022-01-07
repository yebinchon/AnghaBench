
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_uio_dev {int pdev; int cnic_uinfo; } ;


 int __cnic_free_uio_rings (struct cnic_uio_dev*) ;
 int kfree (struct cnic_uio_dev*) ;
 int pci_dev_put (int ) ;
 int uio_unregister_device (int *) ;

__attribute__((used)) static void __cnic_free_uio(struct cnic_uio_dev *udev)
{
 uio_unregister_device(&udev->cnic_uinfo);

 __cnic_free_uio_rings(udev);

 pci_dev_put(udev->pdev);
 kfree(udev);
}
