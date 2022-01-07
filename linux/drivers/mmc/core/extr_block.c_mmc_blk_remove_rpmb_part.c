
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_rpmb_data {int dev; int chrdev; } ;


 int cdev_device_del (int *,int *) ;
 int put_device (int *) ;

__attribute__((used)) static void mmc_blk_remove_rpmb_part(struct mmc_rpmb_data *rpmb)

{
 cdev_device_del(&rpmb->chrdev, &rpmb->dev);
 put_device(&rpmb->dev);
}
