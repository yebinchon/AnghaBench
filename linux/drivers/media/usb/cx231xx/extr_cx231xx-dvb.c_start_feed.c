
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct cx231xx_dvb* priv; } ;
struct cx231xx_dvb {int nfeeds; int lock; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int start_streaming (struct cx231xx_dvb*) ;

__attribute__((used)) static int start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct cx231xx_dvb *dvb = demux->priv;
 int rc, ret;

 if (!demux->dmx.frontend)
  return -EINVAL;

 mutex_lock(&dvb->lock);
 dvb->nfeeds++;
 rc = dvb->nfeeds;

 if (dvb->nfeeds == 1) {
  ret = start_streaming(dvb);
  if (ret < 0)
   rc = ret;
 }

 mutex_unlock(&dvb->lock);
 return rc;
}
