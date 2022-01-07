
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_dvb {int lock; int nfeeds; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct em28xx_dvb* priv; } ;


 int em28xx_stop_streaming (struct em28xx_dvb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int em28xx_stop_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct em28xx_dvb *dvb = demux->priv;
 int err = 0;

 mutex_lock(&dvb->lock);
 dvb->nfeeds--;

 if (!dvb->nfeeds)
  err = em28xx_stop_streaming(dvb);

 mutex_unlock(&dvb->lock);
 return err;
}
