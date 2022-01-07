
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dvb {scalar_t__ frontend; int lock; } ;
struct au0828_dev {int need_urb_start; int restart_streaming; scalar_t__ urb_streaming; struct au0828_dvb dvb; } ;


 int au0828_stop_transport (struct au0828_dev*,int) ;
 int cancel_work_sync (int *) ;
 int dvb_frontend_suspend (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int) ;
 int stop_urb_transfer (struct au0828_dev*) ;

void au0828_dvb_suspend(struct au0828_dev *dev)
{
 struct au0828_dvb *dvb = &dev->dvb;
 int rc;

 if (dvb->frontend) {
  if (dev->urb_streaming) {
   cancel_work_sync(&dev->restart_streaming);

   mutex_lock(&dvb->lock);
   stop_urb_transfer(dev);
   au0828_stop_transport(dev, 1);
   mutex_unlock(&dvb->lock);
   dev->need_urb_start = 1;
  }

  rc = dvb_frontend_suspend(dvb->frontend);
  pr_info("au0828_dvb_suspend(): Suspending DVB fe %d\n", rc);
 }
}
