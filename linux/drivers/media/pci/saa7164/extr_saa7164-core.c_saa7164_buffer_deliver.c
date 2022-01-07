
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int demux; } ;
struct saa7164_port {TYPE_1__ dvb; } ;
struct saa7164_buffer {scalar_t__ cpu; struct saa7164_port* port; } ;


 int SAA7164_TS_NUMBER_OF_LINES ;
 int dvb_dmx_swfilter_packets (int *,int *,int ) ;

__attribute__((used)) static void saa7164_buffer_deliver(struct saa7164_buffer *buf)
{
 struct saa7164_port *port = buf->port;


 dvb_dmx_swfilter_packets(&port->dvb.demux, (u8 *)buf->cpu,
  SAA7164_TS_NUMBER_OF_LINES);

}
