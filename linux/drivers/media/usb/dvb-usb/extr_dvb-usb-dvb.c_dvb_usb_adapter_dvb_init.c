
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_25__ {int proposed_mac; struct dvb_usb_adapter* priv; } ;
struct TYPE_16__ {int capabilities; } ;
struct TYPE_18__ {scalar_t__ filternum; scalar_t__ feednum; TYPE_10__ dmx; int * write_to_decoder; int stop_feed; int start_feed; struct dvb_usb_adapter* priv; } ;
struct TYPE_17__ {scalar_t__ filternum; scalar_t__ capabilities; TYPE_10__* demux; } ;
struct TYPE_22__ {int num_frontends; } ;
struct dvb_usb_adapter {TYPE_7__ dvb_adap; TYPE_14__ demux; TYPE_11__ dmxdev; int state; int dvb_net; TYPE_5__* fe_adap; TYPE_4__ props; TYPE_6__* dev; } ;
struct TYPE_21__ {scalar_t__ (* read_mac_address ) (TYPE_6__*,int ) ;} ;
struct TYPE_24__ {TYPE_3__ props; TYPE_2__* udev; int owner; TYPE_1__* desc; } ;
struct TYPE_23__ {scalar_t__ max_feed_count; } ;
struct TYPE_20__ {int dev; } ;
struct TYPE_19__ {int name; } ;


 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int DVB_USB_ADAP_STATE_DVB ;
 int deb_info (char*,int) ;
 int dvb_dmx_init (TYPE_14__*) ;
 int dvb_dmx_release (TYPE_14__*) ;
 int dvb_dmxdev_init (TYPE_11__*,TYPE_7__*) ;
 int dvb_dmxdev_release (TYPE_11__*) ;
 int dvb_net_init (TYPE_7__*,int *,TYPE_10__*) ;
 int dvb_register_adapter (TYPE_7__*,int ,int ,int *,short*) ;
 int dvb_unregister_adapter (TYPE_7__*) ;
 int dvb_usb_media_device_init (struct dvb_usb_adapter*) ;
 int dvb_usb_media_device_unregister (struct dvb_usb_adapter*) ;
 int dvb_usb_start_feed ;
 int dvb_usb_stop_feed ;
 int err (char*,...) ;
 int info (char*,int ) ;
 scalar_t__ stub1 (TYPE_6__*,int ) ;

int dvb_usb_adapter_dvb_init(struct dvb_usb_adapter *adap, short *adapter_nums)
{
 int i;
 int ret = dvb_register_adapter(&adap->dvb_adap, adap->dev->desc->name,
           adap->dev->owner, &adap->dev->udev->dev,
           adapter_nums);

 if (ret < 0) {
  deb_info("dvb_register_adapter failed: error %d", ret);
  goto err;
 }
 adap->dvb_adap.priv = adap;

 ret = dvb_usb_media_device_init(adap);
 if (ret < 0) {
  deb_info("dvb_usb_media_device_init failed: error %d", ret);
  goto err_mc;
 }

 if (adap->dev->props.read_mac_address) {
  if (adap->dev->props.read_mac_address(adap->dev, adap->dvb_adap.proposed_mac) == 0)
   info("MAC address: %pM", adap->dvb_adap.proposed_mac);
  else
   err("MAC address reading failed.");
 }


 adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
 adap->demux.priv = adap;

 adap->demux.filternum = 0;
 for (i = 0; i < adap->props.num_frontends; i++) {
  if (adap->demux.filternum < adap->fe_adap[i].max_feed_count)
   adap->demux.filternum = adap->fe_adap[i].max_feed_count;
 }
 adap->demux.feednum = adap->demux.filternum;
 adap->demux.start_feed = dvb_usb_start_feed;
 adap->demux.stop_feed = dvb_usb_stop_feed;
 adap->demux.write_to_decoder = ((void*)0);
 if ((ret = dvb_dmx_init(&adap->demux)) < 0) {
  err("dvb_dmx_init failed: error %d", ret);
  goto err_dmx;
 }

 adap->dmxdev.filternum = adap->demux.filternum;
 adap->dmxdev.demux = &adap->demux.dmx;
 adap->dmxdev.capabilities = 0;
 if ((ret = dvb_dmxdev_init(&adap->dmxdev, &adap->dvb_adap)) < 0) {
  err("dvb_dmxdev_init failed: error %d", ret);
  goto err_dmx_dev;
 }

 if ((ret = dvb_net_init(&adap->dvb_adap, &adap->dvb_net,
      &adap->demux.dmx)) < 0) {
  err("dvb_net_init failed: error %d", ret);
  goto err_net_init;
 }

 adap->state |= DVB_USB_ADAP_STATE_DVB;
 return 0;

err_net_init:
 dvb_dmxdev_release(&adap->dmxdev);
err_dmx_dev:
 dvb_dmx_release(&adap->demux);
err_dmx:
 dvb_usb_media_device_unregister(adap);
err_mc:
 dvb_unregister_adapter(&adap->dvb_adap);
err:
 return ret;
}
