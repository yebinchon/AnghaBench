
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cosm_device {size_t shutdown_status; int dev; } ;


 int * cosm_shutdown_status_string ;
 int dev_dbg (int *,char*,int ,int ) ;

void cosm_set_shutdown_status(struct cosm_device *cdev, u8 shutdown_status)
{
 dev_dbg(&cdev->dev, "Shutdown Status %s -> %s\n",
  cosm_shutdown_status_string[cdev->shutdown_status],
  cosm_shutdown_status_string[shutdown_status]);
 cdev->shutdown_status = shutdown_status;
}
