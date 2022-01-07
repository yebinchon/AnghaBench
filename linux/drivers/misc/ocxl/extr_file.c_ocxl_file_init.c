
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int devnode; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int OCXL_NUM_MINORS ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 TYPE_1__* class_create (int ,char*) ;
 int idr_init (int *) ;
 int minors_idr ;
 int minors_idr_lock ;
 int mutex_init (int *) ;
 TYPE_1__* ocxl_class ;
 int ocxl_dev ;
 int ocxl_devnode ;
 int pr_err (char*,...) ;
 int unregister_chrdev_region (int ,int ) ;

int ocxl_file_init(void)
{
 int rc;

 mutex_init(&minors_idr_lock);
 idr_init(&minors_idr);

 rc = alloc_chrdev_region(&ocxl_dev, 0, OCXL_NUM_MINORS, "ocxl");
 if (rc) {
  pr_err("Unable to allocate ocxl major number: %d\n", rc);
  return rc;
 }

 ocxl_class = class_create(THIS_MODULE, "ocxl");
 if (IS_ERR(ocxl_class)) {
  pr_err("Unable to create ocxl class\n");
  unregister_chrdev_region(ocxl_dev, OCXL_NUM_MINORS);
  return PTR_ERR(ocxl_class);
 }

 ocxl_class->devnode = ocxl_devnode;
 return 0;
}
