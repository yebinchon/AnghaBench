
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_19__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;


typedef int u32 ;
struct dvb_demux {int dummy; } ;
struct TYPE_25__ {struct dvb_bt8xx_card* priv; } ;
struct TYPE_29__ {int capabilities; int (* add_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* connect_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* remove_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* disconnect_frontend ) (TYPE_3__*) ;} ;
struct TYPE_24__ {int filternum; int feednum; TYPE_3__ dmx; int * write_to_decoder; int stop_feed; int start_feed; struct dvb_bt8xx_card* priv; } ;
struct TYPE_26__ {int filternum; scalar_t__ capabilities; TYPE_3__* demux; } ;
struct TYPE_30__ {int source; } ;
struct dvb_bt8xx_card {TYPE_15__ dvb_adapter; TYPE_14__ demux; TYPE_19__ dmxdev; TYPE_4__ fe_hw; TYPE_4__ fe_mem; TYPE_2__* bt; int dvbnet; int i2c_adapter; int card_name; } ;
struct TYPE_28__ {int tasklet; int adapter; TYPE_1__* dev; } ;
struct TYPE_27__ {int dev; } ;


 int DMX_FRONTEND_0 ;
 int DMX_MEMORY_BASED_FILTERING ;
 int DMX_MEMORY_FE ;
 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_bt8xx_start_feed ;
 int dvb_bt8xx_stop_feed ;
 int dvb_bt8xx_task ;
 int dvb_dmx_init (TYPE_14__*) ;
 int dvb_dmx_release (TYPE_14__*) ;
 int dvb_dmxdev_init (TYPE_19__*,TYPE_15__*) ;
 int dvb_dmxdev_release (TYPE_19__*) ;
 int dvb_net_init (TYPE_15__*,int *,TYPE_3__*) ;
 int dvb_register_adapter (TYPE_15__*,int ,int ,int *,int ) ;
 int dvb_unregister_adapter (TYPE_15__*) ;
 int frontend_init (struct dvb_bt8xx_card*,int ) ;
 int memset (TYPE_14__*,int ,int) ;
 int pr_err (char*,int) ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;
 int stub2 (TYPE_3__*,TYPE_4__*) ;
 int stub3 (TYPE_3__*,TYPE_4__*) ;
 int stub4 (TYPE_3__*) ;
 int stub5 (TYPE_3__*,TYPE_4__*) ;
 int stub6 (TYPE_3__*,TYPE_4__*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int dvb_bt8xx_load_card(struct dvb_bt8xx_card *card, u32 type)
{
 int result;

 result = dvb_register_adapter(&card->dvb_adapter, card->card_name,
          THIS_MODULE, &card->bt->dev->dev,
          adapter_nr);
 if (result < 0) {
  pr_err("dvb_register_adapter failed (errno = %d)\n", result);
  return result;
 }
 card->dvb_adapter.priv = card;

 card->bt->adapter = card->i2c_adapter;

 memset(&card->demux, 0, sizeof(struct dvb_demux));

 card->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING | DMX_MEMORY_BASED_FILTERING;

 card->demux.priv = card;
 card->demux.filternum = 256;
 card->demux.feednum = 256;
 card->demux.start_feed = dvb_bt8xx_start_feed;
 card->demux.stop_feed = dvb_bt8xx_stop_feed;
 card->demux.write_to_decoder = ((void*)0);

 result = dvb_dmx_init(&card->demux);
 if (result < 0) {
  pr_err("dvb_dmx_init failed (errno = %d)\n", result);
  goto err_unregister_adaptor;
 }

 card->dmxdev.filternum = 256;
 card->dmxdev.demux = &card->demux.dmx;
 card->dmxdev.capabilities = 0;

 result = dvb_dmxdev_init(&card->dmxdev, &card->dvb_adapter);
 if (result < 0) {
  pr_err("dvb_dmxdev_init failed (errno = %d)\n", result);
  goto err_dmx_release;
 }

 card->fe_hw.source = DMX_FRONTEND_0;

 result = card->demux.dmx.add_frontend(&card->demux.dmx, &card->fe_hw);
 if (result < 0) {
  pr_err("dvb_dmx_init failed (errno = %d)\n", result);
  goto err_dmxdev_release;
 }

 card->fe_mem.source = DMX_MEMORY_FE;

 result = card->demux.dmx.add_frontend(&card->demux.dmx, &card->fe_mem);
 if (result < 0) {
  pr_err("dvb_dmx_init failed (errno = %d)\n", result);
  goto err_remove_hw_frontend;
 }

 result = card->demux.dmx.connect_frontend(&card->demux.dmx, &card->fe_hw);
 if (result < 0) {
  pr_err("dvb_dmx_init failed (errno = %d)\n", result);
  goto err_remove_mem_frontend;
 }

 result = dvb_net_init(&card->dvb_adapter, &card->dvbnet, &card->demux.dmx);
 if (result < 0) {
  pr_err("dvb_net_init failed (errno = %d)\n", result);
  goto err_disconnect_frontend;
 }

 tasklet_init(&card->bt->tasklet, dvb_bt8xx_task, (unsigned long) card);

 frontend_init(card, type);

 return 0;

err_disconnect_frontend:
 card->demux.dmx.disconnect_frontend(&card->demux.dmx);
err_remove_mem_frontend:
 card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_mem);
err_remove_hw_frontend:
 card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_hw);
err_dmxdev_release:
 dvb_dmxdev_release(&card->dmxdev);
err_dmx_release:
 dvb_dmx_release(&card->demux);
err_unregister_adaptor:
 dvb_unregister_adapter(&card->dvb_adapter);
 return result;
}
