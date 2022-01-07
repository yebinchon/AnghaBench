
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt3_board {struct pt3_adapter** adaps; } ;
struct dmx_demux {int (* close ) (struct dmx_demux*) ;} ;
struct TYPE_4__ {struct dmx_demux dmx; } ;
struct pt3_adapter {int dvb_adap; TYPE_2__ demux; int dmxdev; int i2c_demod; int i2c_tuner; TYPE_1__* fe; scalar_t__ thread; } ;
struct TYPE_3__ {scalar_t__ frontend_priv; int * callback; } ;


 int dvb_dmx_release (TYPE_2__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_module_release (int ) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (TYPE_1__*) ;
 int kfree (struct pt3_adapter*) ;
 int one_adapter ;
 int pt3_free_dmabuf (struct pt3_adapter*) ;
 int pt3_stop_streaming (struct pt3_adapter*) ;
 int stub1 (struct dmx_demux*) ;

__attribute__((used)) static void pt3_cleanup_adapter(struct pt3_board *pt3, int index)
{
 struct pt3_adapter *adap;
 struct dmx_demux *dmx;

 adap = pt3->adaps[index];
 if (adap == ((void*)0))
  return;


 if (adap->thread)
  pt3_stop_streaming(adap);

 dmx = &adap->demux.dmx;
 dmx->close(dmx);
 if (adap->fe) {
  adap->fe->callback = ((void*)0);
  if (adap->fe->frontend_priv)
   dvb_unregister_frontend(adap->fe);
  dvb_module_release(adap->i2c_tuner);
  dvb_module_release(adap->i2c_demod);
 }
 pt3_free_dmabuf(adap);
 dvb_dmxdev_release(&adap->dmxdev);
 dvb_dmx_release(&adap->demux);
 if (index == 0 || !one_adapter)
  dvb_unregister_adapter(&adap->dvb_adap);
 kfree(adap);
 pt3->adaps[index] = ((void*)0);
}
