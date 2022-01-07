
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_21__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;


struct module {int dummy; } ;
struct TYPE_28__ {int * priv; int mdev; } ;
struct TYPE_33__ {int capabilities; int (* add_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* connect_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* remove_frontend ) (TYPE_3__*,TYPE_4__*) ;} ;
struct TYPE_31__ {int filternum; int feednum; TYPE_3__ dmx; int stop_feed; int start_feed; struct em28xx_dvb* priv; } ;
struct TYPE_30__ {int filternum; scalar_t__ capabilities; TYPE_3__* demux; } ;
struct TYPE_34__ {int source; } ;
struct em28xx_dvb {TYPE_14__ adapter; TYPE_13__** fe; TYPE_24__ demux; TYPE_21__ dmxdev; TYPE_4__ fe_hw; TYPE_4__ fe_mem; int net; int lock; } ;
struct em28xx {size_t def_i2c_bus; scalar_t__ tuner_type; int has_video; TYPE_2__* intf; int * i2c_bus; int media_dev; } ;
struct device {int dummy; } ;
struct TYPE_32__ {int dev; } ;
struct TYPE_29__ {void* ts_bus_ctrl; } ;
struct TYPE_27__ {TYPE_1__ ops; } ;


 int DMX_FRONTEND_0 ;
 int DMX_MEMORY_BASED_FILTERING ;
 int DMX_MEMORY_FE ;
 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 scalar_t__ TUNER_ABSENT ;
 int adapter_nr ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,int) ;
 int dvb_create_media_graph (TYPE_14__*,int) ;
 int dvb_dmx_init (TYPE_24__*) ;
 int dvb_dmx_release (TYPE_24__*) ;
 int dvb_dmxdev_init (TYPE_21__*,TYPE_14__*) ;
 int dvb_dmxdev_release (TYPE_21__*) ;
 int dvb_frontend_detach (TYPE_13__*) ;
 int dvb_net_init (TYPE_14__*,int *,TYPE_3__*) ;
 int dvb_net_release (int *) ;
 int dvb_register_adapter (TYPE_14__*,int ,struct module*,struct device*,int ) ;
 int dvb_register_frontend (TYPE_14__*,TYPE_13__*) ;
 int dvb_unregister_adapter (TYPE_14__*) ;
 int dvb_unregister_frontend (TYPE_13__*) ;
 void* em28xx_dvb_bus_ctrl ;
 int em28xx_start_feed ;
 int em28xx_stop_feed ;
 int mutex_init (int *) ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;
 int stub2 (TYPE_3__*,TYPE_4__*) ;
 int stub3 (TYPE_3__*,TYPE_4__*) ;
 int stub4 (TYPE_3__*,TYPE_4__*) ;
 int stub5 (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static int em28xx_register_dvb(struct em28xx_dvb *dvb, struct module *module,
          struct em28xx *dev, struct device *device)
{
 int result;
 bool create_rf_connector = 0;

 mutex_init(&dvb->lock);


 result = dvb_register_adapter(&dvb->adapter,
          dev_name(&dev->intf->dev), module,
          device, adapter_nr);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "dvb_register_adapter failed (errno = %d)\n",
    result);
  goto fail_adapter;
 }





 dvb->fe[0]->ops.ts_bus_ctrl = em28xx_dvb_bus_ctrl;
 if (dvb->fe[1])
  dvb->fe[1]->ops.ts_bus_ctrl = em28xx_dvb_bus_ctrl;

 dvb->adapter.priv = &dev->i2c_bus[dev->def_i2c_bus];


 result = dvb_register_frontend(&dvb->adapter, dvb->fe[0]);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "dvb_register_frontend failed (errno = %d)\n",
    result);
  goto fail_frontend0;
 }


 if (dvb->fe[1]) {
  result = dvb_register_frontend(&dvb->adapter, dvb->fe[1]);
  if (result < 0) {
   dev_warn(&dev->intf->dev,
     "2nd dvb_register_frontend failed (errno = %d)\n",
     result);
   goto fail_frontend1;
  }
 }


 dvb->demux.dmx.capabilities =
  DMX_TS_FILTERING | DMX_SECTION_FILTERING |
  DMX_MEMORY_BASED_FILTERING;
 dvb->demux.priv = dvb;
 dvb->demux.filternum = 256;
 dvb->demux.feednum = 256;
 dvb->demux.start_feed = em28xx_start_feed;
 dvb->demux.stop_feed = em28xx_stop_feed;

 result = dvb_dmx_init(&dvb->demux);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "dvb_dmx_init failed (errno = %d)\n",
    result);
  goto fail_dmx;
 }

 dvb->dmxdev.filternum = 256;
 dvb->dmxdev.demux = &dvb->demux.dmx;
 dvb->dmxdev.capabilities = 0;
 result = dvb_dmxdev_init(&dvb->dmxdev, &dvb->adapter);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "dvb_dmxdev_init failed (errno = %d)\n",
    result);
  goto fail_dmxdev;
 }

 dvb->fe_hw.source = DMX_FRONTEND_0;
 result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_hw);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "add_frontend failed (DMX_FRONTEND_0, errno = %d)\n",
    result);
  goto fail_fe_hw;
 }

 dvb->fe_mem.source = DMX_MEMORY_FE;
 result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_mem);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "add_frontend failed (DMX_MEMORY_FE, errno = %d)\n",
    result);
  goto fail_fe_mem;
 }

 result = dvb->demux.dmx.connect_frontend(&dvb->demux.dmx, &dvb->fe_hw);
 if (result < 0) {
  dev_warn(&dev->intf->dev,
    "connect_frontend failed (errno = %d)\n",
    result);
  goto fail_fe_conn;
 }


 dvb_net_init(&dvb->adapter, &dvb->net, &dvb->demux.dmx);


 if (!dev->has_video || dev->tuner_type == TUNER_ABSENT)
  create_rf_connector = 1;

 result = dvb_create_media_graph(&dvb->adapter, create_rf_connector);
 if (result < 0)
  goto fail_create_graph;

 return 0;

fail_create_graph:
 dvb_net_release(&dvb->net);
fail_fe_conn:
 dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_mem);
fail_fe_mem:
 dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_hw);
fail_fe_hw:
 dvb_dmxdev_release(&dvb->dmxdev);
fail_dmxdev:
 dvb_dmx_release(&dvb->demux);
fail_dmx:
 if (dvb->fe[1])
  dvb_unregister_frontend(dvb->fe[1]);
 dvb_unregister_frontend(dvb->fe[0]);
fail_frontend1:
 if (dvb->fe[1])
  dvb_frontend_detach(dvb->fe[1]);
fail_frontend0:
 dvb_frontend_detach(dvb->fe[0]);
 dvb_unregister_adapter(&dvb->adapter);
fail_adapter:
 return result;
}
