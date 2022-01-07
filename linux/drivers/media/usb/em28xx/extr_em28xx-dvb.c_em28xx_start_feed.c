
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_dvb {int nfeeds; int lock; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct em28xx_dvb* priv; } ;


 int EINVAL ;
 int em28xx_start_streaming (struct em28xx_dvb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int em28xx_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct em28xx_dvb *dvb = demux->priv;
 int rc, ret;

 if (!demux->dmx.frontend)
  return -EINVAL;

 mutex_lock(&dvb->lock);
 dvb->nfeeds++;
 rc = dvb->nfeeds;

 if (dvb->nfeeds == 1) {
  ret = em28xx_start_streaming(dvb);
  if (ret < 0)
   rc = ret;
 }

 mutex_unlock(&dvb->lock);
 return rc;
}
