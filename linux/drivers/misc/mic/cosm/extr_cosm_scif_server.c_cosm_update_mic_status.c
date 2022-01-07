
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {scalar_t__ shutdown_status_int; } ;


 scalar_t__ MIC_NOP ;
 int cosm_set_shutdown_status (struct cosm_device*,scalar_t__) ;

__attribute__((used)) static void cosm_update_mic_status(struct cosm_device *cdev)
{
 if (cdev->shutdown_status_int != MIC_NOP) {
  cosm_set_shutdown_status(cdev, cdev->shutdown_status_int);
  cdev->shutdown_status_int = MIC_NOP;
 }
}
