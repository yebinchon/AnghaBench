
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cosm_device {scalar_t__ state; scalar_t__ prev_state; int heartbeat_watchdog_enable; int scif_work; int cosm_mutex; TYPE_1__* hw_ops; } ;
struct TYPE_2__ {int (* post_reset ) (struct cosm_device*,scalar_t__) ;int (* stop ) (struct cosm_device*,int) ;} ;


 int MIC_NOP ;
 scalar_t__ MIC_READY ;
 scalar_t__ MIC_RESETTING ;
 scalar_t__ MIC_RESET_FAILED ;
 int cosm_hw_reset (struct cosm_device*,int) ;
 int cosm_set_shutdown_status (struct cosm_device*,int ) ;
 int cosm_set_state (struct cosm_device*,scalar_t__) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cosm_device*,int) ;
 int stub2 (struct cosm_device*,scalar_t__) ;

void cosm_stop(struct cosm_device *cdev, bool force)
{
 mutex_lock(&cdev->cosm_mutex);
 if (cdev->state != MIC_READY || force) {





  u8 state = cdev->state == MIC_RESETTING ?
     cdev->prev_state : cdev->state;
  bool call_hw_ops = state != MIC_RESET_FAILED &&
     state != MIC_READY;

  if (cdev->state != MIC_RESETTING)
   cosm_set_state(cdev, MIC_RESETTING);
  cdev->heartbeat_watchdog_enable = 0;
  if (call_hw_ops)
   cdev->hw_ops->stop(cdev, force);
  cosm_hw_reset(cdev, force);
  cosm_set_shutdown_status(cdev, MIC_NOP);
  if (call_hw_ops && cdev->hw_ops->post_reset)
   cdev->hw_ops->post_reset(cdev, cdev->state);
 }
 mutex_unlock(&cdev->cosm_mutex);
 flush_work(&cdev->scif_work);
}
