
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devt; } ;
struct cxl {TYPE_2__ dev; int adapter_num; TYPE_1__* guest; } ;
typedef int dev_t ;
struct TYPE_3__ {int cdev; } ;


 int CXL_CARD_MINOR (struct cxl*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int cdev_add (int *,int ,int) ;
 int cdev_init (int *,int *) ;
 int cxl_get_dev () ;
 int dev_err (TYPE_2__*,char*,int ,int) ;
 int fops ;
 int sem ;
 int sema_init (int *,int) ;

int cxl_guest_add_chardev(struct cxl *adapter)
{
 dev_t devt;
 int rc;

 devt = MKDEV(MAJOR(cxl_get_dev()), CXL_CARD_MINOR(adapter));
 cdev_init(&adapter->guest->cdev, &fops);
 if ((rc = cdev_add(&adapter->guest->cdev, devt, 1))) {
  dev_err(&adapter->dev,
   "Unable to add chardev on adapter (card%i): %i\n",
   adapter->adapter_num, rc);
  goto err;
 }
 adapter->dev.devt = devt;
 sema_init(&sem, 1);
err:
 return rc;
}
