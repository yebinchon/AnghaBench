
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct ngene_channel {int has_demux; int has_adapter; size_t number; struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int dvbnet; int * fe; int ** i2c_client; scalar_t__ i2c_client_fe; int * fe2; int * ci_dev; int demux_tasklet; scalar_t__ running; struct ngene* dev; } ;
struct ngene {int * adapter; } ;


 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int *) ;
 int dvb_module_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_device (int *) ;
 int dvb_unregister_frontend (int *) ;
 int set_transfer (struct ngene_channel*,int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void release_channel(struct ngene_channel *chan)
{
 struct dvb_demux *dvbdemux = &chan->demux;
 struct ngene *dev = chan->dev;

 if (chan->running)
  set_transfer(chan, 0);

 tasklet_kill(&chan->demux_tasklet);

 if (chan->ci_dev) {
  dvb_unregister_device(chan->ci_dev);
  chan->ci_dev = ((void*)0);
 }

 if (chan->fe2)
  dvb_unregister_frontend(chan->fe2);

 if (chan->fe) {
  dvb_unregister_frontend(chan->fe);


  if (chan->i2c_client_fe) {
   dvb_module_release(chan->i2c_client[0]);
   chan->i2c_client[0] = ((void*)0);
  }

  dvb_frontend_detach(chan->fe);
  chan->fe = ((void*)0);
 }

 if (chan->has_demux) {
  dvb_net_release(&chan->dvbnet);
  dvbdemux->dmx.close(&dvbdemux->dmx);
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &chan->hw_frontend);
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &chan->mem_frontend);
  dvb_dmxdev_release(&chan->dmxdev);
  dvb_dmx_release(&chan->demux);
  chan->has_demux = 0;
 }

 if (chan->has_adapter) {
  dvb_unregister_adapter(&dev->adapter[chan->number]);
  chan->has_adapter = 0;
 }
}
