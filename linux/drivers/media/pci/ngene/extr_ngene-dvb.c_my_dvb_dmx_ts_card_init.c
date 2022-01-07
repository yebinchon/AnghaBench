
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; } ;
struct dvb_demux {int filternum; int feednum; int (* start_feed ) (struct dvb_demux_feed*) ;int (* stop_feed ) (struct dvb_demux_feed*) ;TYPE_1__ dmx; int * write_to_decoder; void* priv; } ;


 int DMX_MEMORY_BASED_FILTERING ;
 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int dvb_dmx_init (struct dvb_demux*) ;

int my_dvb_dmx_ts_card_init(struct dvb_demux *dvbdemux, char *id,
       int (*start_feed)(struct dvb_demux_feed *),
       int (*stop_feed)(struct dvb_demux_feed *),
       void *priv)
{
 dvbdemux->priv = priv;

 dvbdemux->filternum = 256;
 dvbdemux->feednum = 256;
 dvbdemux->start_feed = start_feed;
 dvbdemux->stop_feed = stop_feed;
 dvbdemux->write_to_decoder = ((void*)0);
 dvbdemux->dmx.capabilities = (DMX_TS_FILTERING |
          DMX_SECTION_FILTERING |
          DMX_MEMORY_BASED_FILTERING);
 return dvb_dmx_init(dvbdemux);
}
