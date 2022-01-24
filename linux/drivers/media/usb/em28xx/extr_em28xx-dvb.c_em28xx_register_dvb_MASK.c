#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_14__ ;
typedef  struct TYPE_27__   TYPE_13__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_28__ {int /*<<< orphan*/ * priv; int /*<<< orphan*/  mdev; } ;
struct TYPE_33__ {int capabilities; int (* add_frontend ) (TYPE_3__*,TYPE_4__*) ;int (* connect_frontend ) (TYPE_3__*,TYPE_4__*) ;int /*<<< orphan*/  (* remove_frontend ) (TYPE_3__*,TYPE_4__*) ;} ;
struct TYPE_31__ {int filternum; int feednum; TYPE_3__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; struct em28xx_dvb* priv; } ;
struct TYPE_30__ {int filternum; scalar_t__ capabilities; TYPE_3__* demux; } ;
struct TYPE_34__ {int /*<<< orphan*/  source; } ;
struct em28xx_dvb {TYPE_14__ adapter; TYPE_13__** fe; TYPE_24__ demux; TYPE_21__ dmxdev; TYPE_4__ fe_hw; TYPE_4__ fe_mem; int /*<<< orphan*/  net; int /*<<< orphan*/  lock; } ;
struct em28xx {size_t def_i2c_bus; scalar_t__ tuner_type; int /*<<< orphan*/  has_video; TYPE_2__* intf; int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  media_dev; } ;
struct device {int dummy; } ;
struct TYPE_32__ {int /*<<< orphan*/  dev; } ;
struct TYPE_29__ {void* ts_bus_ctrl; } ;
struct TYPE_27__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_FRONTEND_0 ; 
 int DMX_MEMORY_BASED_FILTERING ; 
 int /*<<< orphan*/  DMX_MEMORY_FE ; 
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_14__*,int) ; 
 int FUNC3 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_24__*) ; 
 int FUNC5 (TYPE_21__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_14__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_14__*,int /*<<< orphan*/ ,struct module*,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_14__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_13__*) ; 
 void* em28xx_dvb_bus_ctrl ; 
 int /*<<< orphan*/  em28xx_start_feed ; 
 int /*<<< orphan*/  em28xx_stop_feed ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC16 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC17 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC20(struct em28xx_dvb *dvb, struct module *module,
			       struct em28xx *dev, struct device *device)
{
	int result;
	bool create_rf_connector = false;

	FUNC14(&dvb->lock);

	/* register adapter */
	result = FUNC10(&dvb->adapter,
				      FUNC0(&dev->intf->dev), module,
				      device, adapter_nr);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "dvb_register_adapter failed (errno = %d)\n",
			 result);
		goto fail_adapter;
	}
#ifdef CONFIG_MEDIA_CONTROLLER_DVB
	dvb->adapter.mdev = dev->media_dev;
#endif

	/* Ensure all frontends negotiate bus access */
	dvb->fe[0]->ops.ts_bus_ctrl = em28xx_dvb_bus_ctrl;
	if (dvb->fe[1])
		dvb->fe[1]->ops.ts_bus_ctrl = em28xx_dvb_bus_ctrl;

	dvb->adapter.priv = &dev->i2c_bus[dev->def_i2c_bus];

	/* register frontend */
	result = FUNC11(&dvb->adapter, dvb->fe[0]);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "dvb_register_frontend failed (errno = %d)\n",
			 result);
		goto fail_frontend0;
	}

	/* register 2nd frontend */
	if (dvb->fe[1]) {
		result = FUNC11(&dvb->adapter, dvb->fe[1]);
		if (result < 0) {
			FUNC1(&dev->intf->dev,
				 "2nd dvb_register_frontend failed (errno = %d)\n",
				 result);
			goto fail_frontend1;
		}
	}

	/* register demux stuff */
	dvb->demux.dmx.capabilities =
		DMX_TS_FILTERING | DMX_SECTION_FILTERING |
		DMX_MEMORY_BASED_FILTERING;
	dvb->demux.priv       = dvb;
	dvb->demux.filternum  = 256;
	dvb->demux.feednum    = 256;
	dvb->demux.start_feed = em28xx_start_feed;
	dvb->demux.stop_feed  = em28xx_stop_feed;

	result = FUNC3(&dvb->demux);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "dvb_dmx_init failed (errno = %d)\n",
			 result);
		goto fail_dmx;
	}

	dvb->dmxdev.filternum    = 256;
	dvb->dmxdev.demux        = &dvb->demux.dmx;
	dvb->dmxdev.capabilities = 0;
	result = FUNC5(&dvb->dmxdev, &dvb->adapter);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "dvb_dmxdev_init failed (errno = %d)\n",
			 result);
		goto fail_dmxdev;
	}

	dvb->fe_hw.source = DMX_FRONTEND_0;
	result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_hw);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "add_frontend failed (DMX_FRONTEND_0, errno = %d)\n",
			 result);
		goto fail_fe_hw;
	}

	dvb->fe_mem.source = DMX_MEMORY_FE;
	result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_mem);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "add_frontend failed (DMX_MEMORY_FE, errno = %d)\n",
			 result);
		goto fail_fe_mem;
	}

	result = dvb->demux.dmx.connect_frontend(&dvb->demux.dmx, &dvb->fe_hw);
	if (result < 0) {
		FUNC1(&dev->intf->dev,
			 "connect_frontend failed (errno = %d)\n",
			 result);
		goto fail_fe_conn;
	}

	/* register network adapter */
	FUNC8(&dvb->adapter, &dvb->net, &dvb->demux.dmx);

	/* If the analog part won't create RF connectors, DVB will do it */
	if (!dev->has_video || dev->tuner_type == TUNER_ABSENT)
		create_rf_connector = true;

	result = FUNC2(&dvb->adapter, create_rf_connector);
	if (result < 0)
		goto fail_create_graph;

	return 0;

fail_create_graph:
	FUNC9(&dvb->net);
fail_fe_conn:
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_mem);
fail_fe_mem:
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_hw);
fail_fe_hw:
	FUNC6(&dvb->dmxdev);
fail_dmxdev:
	FUNC4(&dvb->demux);
fail_dmx:
	if (dvb->fe[1])
		FUNC13(dvb->fe[1]);
	FUNC13(dvb->fe[0]);
fail_frontend1:
	if (dvb->fe[1])
		FUNC7(dvb->fe[1]);
fail_frontend0:
	FUNC7(dvb->fe[0]);
	FUNC12(&dvb->adapter);
fail_adapter:
	return result;
}