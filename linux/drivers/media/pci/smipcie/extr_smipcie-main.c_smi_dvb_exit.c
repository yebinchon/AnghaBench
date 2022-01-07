
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct smi_port {int dvb_adapter; struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int dvbnet; } ;


 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;

__attribute__((used)) static void smi_dvb_exit(struct smi_port *port)
{
 struct dvb_demux *dvbdemux = &port->demux;

 dvb_net_release(&port->dvbnet);

 dvbdemux->dmx.close(&dvbdemux->dmx);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &port->hw_frontend);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &port->mem_frontend);
 dvb_dmxdev_release(&port->dmxdev);
 dvb_dmx_release(&port->demux);

 dvb_unregister_adapter(&port->dvb_adapter);
}
