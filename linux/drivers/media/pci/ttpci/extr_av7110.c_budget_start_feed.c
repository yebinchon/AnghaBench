
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int pusi_seen; struct dvb_demux* demux; } ;
struct dvb_demux {struct av7110* priv; } ;
struct av7110 {int feedlock1; } ;


 int dprintk (int,char*,struct av7110*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_ts_capture (struct av7110*) ;

__attribute__((used)) static int budget_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct av7110 *budget = demux->priv;
 int status;

 dprintk(2, "av7110: %p\n", budget);

 spin_lock(&budget->feedlock1);
 feed->pusi_seen = 0;
 status = start_ts_capture(budget);
 spin_unlock(&budget->feedlock1);
 return status;
}
