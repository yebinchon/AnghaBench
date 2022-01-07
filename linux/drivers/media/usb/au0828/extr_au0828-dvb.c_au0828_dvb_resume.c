
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dvb {int lock; scalar_t__ frontend; } ;
struct au0828_dev {scalar_t__ need_urb_start; struct au0828_dvb dvb; } ;


 int au0828_start_transport (struct au0828_dev*) ;
 int dvb_frontend_resume (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int) ;
 int start_urb_transfer (struct au0828_dev*) ;

void au0828_dvb_resume(struct au0828_dev *dev)
{
 struct au0828_dvb *dvb = &dev->dvb;
 int rc;

 if (dvb->frontend) {

  rc = dvb_frontend_resume(dvb->frontend);
  pr_info("au0828_dvb_resume(): Resuming DVB fe %d\n", rc);
  if (dev->need_urb_start) {

   mutex_lock(&dvb->lock);
   au0828_start_transport(dev);
   start_urb_transfer(dev);
   mutex_unlock(&dvb->lock);
  }
 }
}
