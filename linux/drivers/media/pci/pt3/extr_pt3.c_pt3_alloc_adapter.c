
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt3_board {struct pt3_adapter** adaps; TYPE_2__* pdev; } ;
struct TYPE_7__ {int capabilities; } ;
struct TYPE_10__ {int feednum; int filternum; TYPE_1__ dmx; int stop_feed; int start_feed; struct pt3_adapter* priv; } ;
struct TYPE_9__ {int filternum; TYPE_1__* demux; } ;
struct dvb_adapter {struct pt3_board* priv; } ;
struct pt3_adapter {int adap_idx; TYPE_5__ demux; TYPE_3__ dmxdev; struct dvb_adapter dvb_adap; } ;
struct TYPE_8__ {int dev; } ;


 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dev_err (int *,char*) ;
 int dvb_dmx_init (TYPE_5__*) ;
 int dvb_dmx_release (TYPE_5__*) ;
 int dvb_dmxdev_init (TYPE_3__*,struct dvb_adapter*) ;
 int dvb_dmxdev_release (TYPE_3__*) ;
 int dvb_register_adapter (struct dvb_adapter*,char*,int ,int *,int ) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int kfree (struct pt3_adapter*) ;
 struct pt3_adapter* kzalloc (int,int ) ;
 int one_adapter ;
 int pt3_alloc_dmabuf (struct pt3_adapter*) ;
 int pt3_free_dmabuf (struct pt3_adapter*) ;
 int pt3_start_feed ;
 int pt3_stop_feed ;

__attribute__((used)) static int pt3_alloc_adapter(struct pt3_board *pt3, int index)
{
 int ret;
 struct pt3_adapter *adap;
 struct dvb_adapter *da;

 adap = kzalloc(sizeof(*adap), GFP_KERNEL);
 if (!adap)
  return -ENOMEM;

 pt3->adaps[index] = adap;
 adap->adap_idx = index;

 if (index == 0 || !one_adapter) {
  ret = dvb_register_adapter(&adap->dvb_adap, "PT3 DVB",
    THIS_MODULE, &pt3->pdev->dev, adapter_nr);
  if (ret < 0) {
   dev_err(&pt3->pdev->dev,
    "failed to register adapter dev\n");
   goto err_mem;
  }
  da = &adap->dvb_adap;
 } else
  da = &pt3->adaps[0]->dvb_adap;

 adap->dvb_adap.priv = pt3;
 adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
 adap->demux.priv = adap;
 adap->demux.feednum = 256;
 adap->demux.filternum = 256;
 adap->demux.start_feed = pt3_start_feed;
 adap->demux.stop_feed = pt3_stop_feed;
 ret = dvb_dmx_init(&adap->demux);
 if (ret < 0) {
  dev_err(&pt3->pdev->dev, "failed to init dmx dev\n");
  goto err_adap;
 }

 adap->dmxdev.filternum = 256;
 adap->dmxdev.demux = &adap->demux.dmx;
 ret = dvb_dmxdev_init(&adap->dmxdev, da);
 if (ret < 0) {
  dev_err(&pt3->pdev->dev, "failed to init dmxdev\n");
  goto err_demux;
 }

 ret = pt3_alloc_dmabuf(adap);
 if (ret) {
  dev_err(&pt3->pdev->dev, "failed to alloc DMA buffers\n");
  goto err_dmabuf;
 }

 return 0;

err_dmabuf:
 pt3_free_dmabuf(adap);
 dvb_dmxdev_release(&adap->dmxdev);
err_demux:
 dvb_dmx_release(&adap->demux);
err_adap:
 if (index == 0 || !one_adapter)
  dvb_unregister_adapter(da);
err_mem:
 kfree(adap);
 pt3->adaps[index] = ((void*)0);
 return ret;
}
