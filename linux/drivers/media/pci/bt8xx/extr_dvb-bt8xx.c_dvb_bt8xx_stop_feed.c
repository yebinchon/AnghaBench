
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct dvb_bt8xx_card* priv; } ;
struct dvb_bt8xx_card {scalar_t__ nfeeds; int lock; int bt; } ;


 int EINVAL ;
 int bt878_stop (int ) ;
 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvb_bt8xx_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct dvb_bt8xx_card *card = dvbdmx->priv;

 dprintk("dvb_bt8xx: stop_feed\n");

 if (!dvbdmx->dmx.frontend)
  return -EINVAL;

 mutex_lock(&card->lock);
 card->nfeeds--;
 if (card->nfeeds == 0)
  bt878_stop(card->bt);
 mutex_unlock(&card->lock);

 return 0;
}
