
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct budget {struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int dvb_net; } ;


 int dprintk (int,char*,struct budget*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;

__attribute__((used)) static void budget_unregister(struct budget *budget)
{
 struct dvb_demux *dvbdemux = &budget->demux;

 dprintk(2, "budget: %p\n", budget);

 dvb_net_release(&budget->dvb_net);

 dvbdemux->dmx.close(&dvbdemux->dmx);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &budget->hw_frontend);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &budget->mem_frontend);

 dvb_dmxdev_release(&budget->dmxdev);
 dvb_dmx_release(&budget->demux);
}
