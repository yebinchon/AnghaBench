
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCXL_NUM_MINORS ;
 int class_destroy (int ) ;
 int idr_destroy (int *) ;
 int minors_idr ;
 int ocxl_class ;
 int ocxl_dev ;
 int unregister_chrdev_region (int ,int ) ;

void ocxl_file_exit(void)
{
 class_destroy(ocxl_class);
 unregister_chrdev_region(ocxl_dev, OCXL_NUM_MINORS);
 idr_destroy(&minors_idr);
}
