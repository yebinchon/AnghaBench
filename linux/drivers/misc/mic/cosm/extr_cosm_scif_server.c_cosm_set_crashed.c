
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int dev; } ;


 int MIC_CRASHED ;
 int cosm_shutdown_status_int (struct cosm_device*,int ) ;
 int cosm_update_mic_status (struct cosm_device*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void cosm_set_crashed(struct cosm_device *cdev)
{
 dev_err(&cdev->dev, "node alive timeout\n");
 cosm_shutdown_status_int(cdev, MIC_CRASHED);
 cosm_update_mic_status(cdev);
}
