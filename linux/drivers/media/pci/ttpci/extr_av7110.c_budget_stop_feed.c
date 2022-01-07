
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct av7110* priv; } ;
struct av7110 {int feedlock1; } ;


 int dprintk (int,char*,struct av7110*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_ts_capture (struct av7110*) ;

__attribute__((used)) static int budget_stop_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct av7110 *budget = demux->priv;
 int status;

 dprintk(2, "budget: %p\n", budget);

 spin_lock(&budget->feedlock1);
 status = stop_ts_capture(budget);
 spin_unlock(&budget->feedlock1);
 return status;
}
