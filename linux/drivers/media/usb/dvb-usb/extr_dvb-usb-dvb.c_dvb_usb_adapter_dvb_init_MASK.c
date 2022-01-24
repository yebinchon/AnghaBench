#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  proposed_mac; struct dvb_usb_adapter* priv; } ;
struct TYPE_16__ {int capabilities; } ;
struct TYPE_18__ {scalar_t__ filternum; scalar_t__ feednum; TYPE_10__ dmx; int /*<<< orphan*/ * write_to_decoder; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; struct dvb_usb_adapter* priv; } ;
struct TYPE_17__ {scalar_t__ filternum; scalar_t__ capabilities; TYPE_10__* demux; } ;
struct TYPE_22__ {int num_frontends; } ;
struct dvb_usb_adapter {TYPE_7__ dvb_adap; TYPE_14__ demux; TYPE_11__ dmxdev; int /*<<< orphan*/  state; int /*<<< orphan*/  dvb_net; TYPE_5__* fe_adap; TYPE_4__ props; TYPE_6__* dev; } ;
struct TYPE_21__ {scalar_t__ (* read_mac_address ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_24__ {TYPE_3__ props; TYPE_2__* udev; int /*<<< orphan*/  owner; TYPE_1__* desc; } ;
struct TYPE_23__ {scalar_t__ max_feed_count; } ;
struct TYPE_20__ {int /*<<< orphan*/  dev; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 int /*<<< orphan*/  DVB_USB_ADAP_STATE_DVB ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_14__*) ; 
 int FUNC3 (TYPE_11__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int FUNC8 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  dvb_usb_start_feed ; 
 int /*<<< orphan*/  dvb_usb_stop_feed ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 

int FUNC13(struct dvb_usb_adapter *adap, short *adapter_nums)
{
	int i;
	int ret = FUNC6(&adap->dvb_adap, adap->dev->desc->name,
				       adap->dev->owner, &adap->dev->udev->dev,
				       adapter_nums);

	if (ret < 0) {
		FUNC0("dvb_register_adapter failed: error %d", ret);
		goto err;
	}
	adap->dvb_adap.priv = adap;

	ret = FUNC8(adap);
	if (ret < 0) {
		FUNC0("dvb_usb_media_device_init failed: error %d", ret);
		goto err_mc;
	}

	if (adap->dev->props.read_mac_address) {
		if (adap->dev->props.read_mac_address(adap->dev, adap->dvb_adap.proposed_mac) == 0)
			FUNC11("MAC address: %pM", adap->dvb_adap.proposed_mac);
		else
			FUNC10("MAC address reading failed.");
	}


	adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
	adap->demux.priv             = adap;

	adap->demux.filternum        = 0;
	for (i = 0; i < adap->props.num_frontends; i++) {
		if (adap->demux.filternum < adap->fe_adap[i].max_feed_count)
			adap->demux.filternum = adap->fe_adap[i].max_feed_count;
	}
	adap->demux.feednum          = adap->demux.filternum;
	adap->demux.start_feed       = dvb_usb_start_feed;
	adap->demux.stop_feed        = dvb_usb_stop_feed;
	adap->demux.write_to_decoder = NULL;
	if ((ret = FUNC1(&adap->demux)) < 0) {
		FUNC10("dvb_dmx_init failed: error %d", ret);
		goto err_dmx;
	}

	adap->dmxdev.filternum       = adap->demux.filternum;
	adap->dmxdev.demux           = &adap->demux.dmx;
	adap->dmxdev.capabilities    = 0;
	if ((ret = FUNC3(&adap->dmxdev, &adap->dvb_adap)) < 0) {
		FUNC10("dvb_dmxdev_init failed: error %d", ret);
		goto err_dmx_dev;
	}

	if ((ret = FUNC5(&adap->dvb_adap, &adap->dvb_net,
						&adap->demux.dmx)) < 0) {
		FUNC10("dvb_net_init failed: error %d", ret);
		goto err_net_init;
	}

	adap->state |= DVB_USB_ADAP_STATE_DVB;
	return 0;

err_net_init:
	FUNC4(&adap->dmxdev);
err_dmx_dev:
	FUNC2(&adap->demux);
err_dmx:
	FUNC9(adap);
err_mc:
	FUNC7(&adap->dvb_adap);
err:
	return ret;
}