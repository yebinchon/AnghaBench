
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct ddb_input* priv; } ;
struct ddb_input {int nr; TYPE_1__* port; } ;
struct ddb_dvb {int users; } ;
struct TYPE_2__ {struct ddb_dvb* dvb; } ;


 int ddb_input_start_all (struct ddb_input*) ;

__attribute__((used)) static int start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct ddb_input *input = dvbdmx->priv;
 struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];

 if (!dvb->users)
  ddb_input_start_all(input);

 return ++dvb->users;
}
