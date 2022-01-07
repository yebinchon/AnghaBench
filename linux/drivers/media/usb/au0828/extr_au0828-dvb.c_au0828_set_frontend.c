
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct au0828_dvb {int (* set_frontend ) (struct dvb_frontend*) ;int lock; } ;
struct au0828_dev {int urb_streaming; int restart_streaming; struct au0828_dvb dvb; } ;
struct TYPE_2__ {struct au0828_dev* priv; } ;


 int au0828_start_transport (struct au0828_dev*) ;
 int au0828_stop_transport (struct au0828_dev*,int) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int start_urb_transfer (struct au0828_dev*) ;
 int stop_urb_transfer (struct au0828_dev*) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int au0828_set_frontend(struct dvb_frontend *fe)
{
 struct au0828_dev *dev = fe->dvb->priv;
 struct au0828_dvb *dvb = &dev->dvb;
 int ret, was_streaming;

 mutex_lock(&dvb->lock);
 was_streaming = dev->urb_streaming;
 if (was_streaming) {
  au0828_stop_transport(dev, 1);





  mutex_unlock(&dvb->lock);
  cancel_work_sync(&dev->restart_streaming);
  mutex_lock(&dvb->lock);

  stop_urb_transfer(dev);
 }
 mutex_unlock(&dvb->lock);

 ret = dvb->set_frontend(fe);

 if (was_streaming) {
  mutex_lock(&dvb->lock);
  au0828_start_transport(dev);
  start_urb_transfer(dev);
  mutex_unlock(&dvb->lock);
 }

 return ret;
}
