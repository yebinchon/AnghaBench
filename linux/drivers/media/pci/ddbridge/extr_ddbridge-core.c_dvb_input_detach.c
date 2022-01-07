
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* remove_frontend ) (TYPE_2__*,int *) ;} ;
struct dvb_demux {TYPE_2__ dmx; } ;
struct ddb_input {int nr; TYPE_1__* port; } ;
struct ddb_dvb {int attached; struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int dvbnet; int * fe2; int * fe; int ** i2c_client; } ;
struct TYPE_4__ {struct ddb_dvb* dvb; } ;


 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int *) ;
 int dvb_module_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_frontend (int *) ;
 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;

__attribute__((used)) static void dvb_input_detach(struct ddb_input *input)
{
 struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
 struct dvb_demux *dvbdemux = &dvb->demux;

 switch (dvb->attached) {
 case 0x31:
  if (dvb->fe2)
   dvb_unregister_frontend(dvb->fe2);
  if (dvb->fe)
   dvb_unregister_frontend(dvb->fe);

 case 0x30:
  dvb_module_release(dvb->i2c_client[0]);
  dvb->i2c_client[0] = ((void*)0);

  if (dvb->fe2)
   dvb_frontend_detach(dvb->fe2);
  if (dvb->fe)
   dvb_frontend_detach(dvb->fe);
  dvb->fe = ((void*)0);
  dvb->fe2 = ((void*)0);

 case 0x20:
  dvb_net_release(&dvb->dvbnet);

 case 0x12:
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &dvb->hw_frontend);
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &dvb->mem_frontend);

 case 0x11:
  dvb_dmxdev_release(&dvb->dmxdev);

 case 0x10:
  dvb_dmx_release(&dvb->demux);

 case 0x01:
  break;
 }
 dvb->attached = 0x00;
}
