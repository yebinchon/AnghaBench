
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dmxdev {int filternum; scalar_t__ capabilities; TYPE_2__* demux; } ;
struct TYPE_4__ {int capabilities; } ;
struct dvb_demux {int feednum; int filternum; TYPE_2__ dmx; int * write_to_decoder; int stop_feed; int start_feed; struct pt1_adapter* priv; } ;
struct dvb_adapter {struct pt1_adapter* priv; } ;
struct pt1_adapter {int sleep; int st_count; struct dmxdev dmxdev; struct dvb_demux demux; struct dvb_adapter adap; scalar_t__ packet_count; scalar_t__ upacket_count; void* buf; int voltage; struct pt1* pt1; } ;
struct pt1 {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int DRIVER_NAME ;
 int ENOMEM ;
 struct pt1_adapter* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SEC_VOLTAGE_OFF ;
 int THIS_MODULE ;
 scalar_t__ __get_free_page (int ) ;
 int adapter_nr ;
 int dvb_dmx_init (struct dvb_demux*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_init (struct dmxdev*,struct dvb_adapter*) ;
 int dvb_register_adapter (struct dvb_adapter*,int ,int ,int *,int ) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int free_page (unsigned long) ;
 int kfree (struct pt1_adapter*) ;
 struct pt1_adapter* kzalloc (int,int ) ;
 int pt1_start_feed ;
 int pt1_stop_feed ;

__attribute__((used)) static struct pt1_adapter *
pt1_alloc_adapter(struct pt1 *pt1)
{
 struct pt1_adapter *adap;
 void *buf;
 struct dvb_adapter *dvb_adap;
 struct dvb_demux *demux;
 struct dmxdev *dmxdev;
 int ret;

 adap = kzalloc(sizeof(struct pt1_adapter), GFP_KERNEL);
 if (!adap) {
  ret = -ENOMEM;
  goto err;
 }

 adap->pt1 = pt1;

 adap->voltage = SEC_VOLTAGE_OFF;
 adap->sleep = 1;

 buf = (u8 *)__get_free_page(GFP_KERNEL);
 if (!buf) {
  ret = -ENOMEM;
  goto err_kfree;
 }

 adap->buf = buf;
 adap->upacket_count = 0;
 adap->packet_count = 0;
 adap->st_count = -1;

 dvb_adap = &adap->adap;
 dvb_adap->priv = adap;
 ret = dvb_register_adapter(dvb_adap, DRIVER_NAME, THIS_MODULE,
       &pt1->pdev->dev, adapter_nr);
 if (ret < 0)
  goto err_free_page;

 demux = &adap->demux;
 demux->dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
 demux->priv = adap;
 demux->feednum = 256;
 demux->filternum = 256;
 demux->start_feed = pt1_start_feed;
 demux->stop_feed = pt1_stop_feed;
 demux->write_to_decoder = ((void*)0);
 ret = dvb_dmx_init(demux);
 if (ret < 0)
  goto err_unregister_adapter;

 dmxdev = &adap->dmxdev;
 dmxdev->filternum = 256;
 dmxdev->demux = &demux->dmx;
 dmxdev->capabilities = 0;
 ret = dvb_dmxdev_init(dmxdev, dvb_adap);
 if (ret < 0)
  goto err_dmx_release;

 return adap;

err_dmx_release:
 dvb_dmx_release(demux);
err_unregister_adapter:
 dvb_unregister_adapter(dvb_adap);
err_free_page:
 free_page((unsigned long)buf);
err_kfree:
 kfree(adap);
err:
 return ERR_PTR(ret);
}
