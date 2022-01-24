#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_13__ ;
typedef  struct TYPE_27__   TYPE_12__ ;

/* Type definitions */
struct module {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_28__ {int mfe_shared; struct cx231xx* priv; } ;
struct TYPE_32__ {int capabilities; int (* add_frontend ) (TYPE_2__*,TYPE_3__*) ;int (* connect_frontend ) (TYPE_2__*,TYPE_3__*) ;int /*<<< orphan*/  (* remove_frontend ) (TYPE_2__*,TYPE_3__*) ;} ;
struct TYPE_31__ {int filternum; int feednum; TYPE_2__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; struct cx231xx_dvb* priv; } ;
struct TYPE_30__ {int filternum; scalar_t__ capabilities; TYPE_2__* demux; } ;
struct TYPE_33__ {int /*<<< orphan*/  source; } ;
struct cx231xx_dvb {TYPE_13__ adapter; TYPE_12__** frontend; TYPE_24__ demux; TYPE_21__ dmxdev; TYPE_3__ fe_hw; TYPE_3__ fe_mem; int /*<<< orphan*/  net; int /*<<< orphan*/  lock; } ;
struct cx231xx {scalar_t__ tuner_type; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  media_dev; } ;
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
 void* cx231xx_dvb_bus_ctrl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_13__*,int) ; 
 int FUNC2 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_24__*) ; 
 int FUNC4 (TYPE_21__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_13__*,int /*<<< orphan*/ ,struct module*,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_13__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_feed ; 
 int /*<<< orphan*/  stop_feed ; 
 int FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC16 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC17 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC20(struct cx231xx_dvb *dvb,
			struct module *module,
			struct cx231xx *dev, struct device *device)
{
	int result;

	FUNC14(&dvb->lock);


	/* register adapter */
	result = FUNC9(&dvb->adapter, dev->name, module, device,
				      adapter_nr);
	if (result < 0) {
		FUNC0(dev->dev,
		       "%s: dvb_register_adapter failed (errno = %d)\n",
		       dev->name, result);
		goto fail_adapter;
	}
	FUNC11(&dvb->adapter, dev->media_dev);

	/* Ensure all frontends negotiate bus access */
	dvb->frontend[0]->ops.ts_bus_ctrl = cx231xx_dvb_bus_ctrl;
	if (dvb->frontend[1])
		dvb->frontend[1]->ops.ts_bus_ctrl = cx231xx_dvb_bus_ctrl;

	dvb->adapter.priv = dev;

	/* register frontend */
	result = FUNC10(&dvb->adapter, dvb->frontend[0]);
	if (result < 0) {
		FUNC0(dev->dev,
		       "%s: dvb_register_frontend failed (errno = %d)\n",
		       dev->name, result);
		goto fail_frontend0;
	}

	if (dvb->frontend[1]) {
		result = FUNC10(&dvb->adapter, dvb->frontend[1]);
		if (result < 0) {
			FUNC0(dev->dev,
				 "%s: 2nd dvb_register_frontend failed (errno = %d)\n",
				dev->name, result);
			goto fail_frontend1;
		}

		/* MFE lock */
		dvb->adapter.mfe_shared = 1;
	}

	/* register demux stuff */
	dvb->demux.dmx.capabilities =
	    DMX_TS_FILTERING | DMX_SECTION_FILTERING |
	    DMX_MEMORY_BASED_FILTERING;
	dvb->demux.priv = dvb;
	dvb->demux.filternum = 256;
	dvb->demux.feednum = 256;
	dvb->demux.start_feed = start_feed;
	dvb->demux.stop_feed = stop_feed;

	result = FUNC2(&dvb->demux);
	if (result < 0) {
		FUNC0(dev->dev,
			 "%s: dvb_dmx_init failed (errno = %d)\n",
		       dev->name, result);
		goto fail_dmx;
	}

	dvb->dmxdev.filternum = 256;
	dvb->dmxdev.demux = &dvb->demux.dmx;
	dvb->dmxdev.capabilities = 0;
	result = FUNC4(&dvb->dmxdev, &dvb->adapter);
	if (result < 0) {
		FUNC0(dev->dev,
			 "%s: dvb_dmxdev_init failed (errno = %d)\n",
			 dev->name, result);
		goto fail_dmxdev;
	}

	dvb->fe_hw.source = DMX_FRONTEND_0;
	result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_hw);
	if (result < 0) {
		FUNC0(dev->dev,
		       "%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\n",
		       dev->name, result);
		goto fail_fe_hw;
	}

	dvb->fe_mem.source = DMX_MEMORY_FE;
	result = dvb->demux.dmx.add_frontend(&dvb->demux.dmx, &dvb->fe_mem);
	if (result < 0) {
		FUNC0(dev->dev,
			 "%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\n",
			 dev->name, result);
		goto fail_fe_mem;
	}

	result = dvb->demux.dmx.connect_frontend(&dvb->demux.dmx, &dvb->fe_hw);
	if (result < 0) {
		FUNC0(dev->dev,
			 "%s: connect_frontend failed (errno = %d)\n",
			 dev->name, result);
		goto fail_fe_conn;
	}

	/* register network adapter */
	FUNC7(&dvb->adapter, &dvb->net, &dvb->demux.dmx);
	result = FUNC1(&dvb->adapter,
					dev->tuner_type == TUNER_ABSENT);
	if (result < 0)
		goto fail_create_graph;

	return 0;

fail_create_graph:
	FUNC8(&dvb->net);
fail_fe_conn:
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_mem);
fail_fe_mem:
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_hw);
fail_fe_hw:
	FUNC5(&dvb->dmxdev);
fail_dmxdev:
	FUNC3(&dvb->demux);
fail_dmx:
	if (dvb->frontend[1])
		FUNC13(dvb->frontend[1]);
	FUNC13(dvb->frontend[0]);
fail_frontend1:
	if (dvb->frontend[1])
		FUNC6(dvb->frontend[1]);
fail_frontend0:
	FUNC6(dvb->frontend[0]);
	FUNC12(&dvb->adapter);
fail_adapter:
	return result;
}