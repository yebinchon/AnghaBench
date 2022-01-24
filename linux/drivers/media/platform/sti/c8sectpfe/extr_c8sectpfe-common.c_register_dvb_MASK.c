#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int capabilities; int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,TYPE_2__*) ;} ;
struct TYPE_16__ {TYPE_1__ dmx; void* filternum; int /*<<< orphan*/ * write_to_decoder; void* stop_feed; void* start_feed; void* feednum; struct stdemux* priv; } ;
struct TYPE_15__ {scalar_t__ capabilities; TYPE_1__* demux; void* filternum; } ;
struct TYPE_18__ {scalar_t__ source; } ;
struct stdemux {TYPE_13__ dvb_demux; TYPE_11__ dmxdev; TYPE_2__ hw_frontend; TYPE_2__ mem_frontend; scalar_t__ tsin_index; } ;
struct dvb_adapter {int dummy; } ;
struct c8sectpfei {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* C8SECTPFE_MAXCHANNEL ; 
 scalar_t__ DMX_FRONTEND_0 ; 
 int DMX_MEMORY_BASED_FILTERING ; 
 scalar_t__ DMX_MEMORY_FE ; 
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*) ; 
 int FUNC3 (TYPE_11__*,struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct stdemux *demux, struct dvb_adapter *adap,
				void *start_feed, void *stop_feed,
				struct c8sectpfei *fei)
{
	int result;

	demux->dvb_demux.dmx.capabilities = DMX_TS_FILTERING |
					DMX_SECTION_FILTERING |
					DMX_MEMORY_BASED_FILTERING;

	demux->dvb_demux.priv = demux;
	demux->dvb_demux.filternum = C8SECTPFE_MAXCHANNEL;
	demux->dvb_demux.feednum = C8SECTPFE_MAXCHANNEL;

	demux->dvb_demux.start_feed = start_feed;
	demux->dvb_demux.stop_feed = stop_feed;
	demux->dvb_demux.write_to_decoder = NULL;

	result = FUNC1(&demux->dvb_demux);
	if (result < 0) {
		FUNC0(fei->dev, "dvb_dmx_init failed (errno = %d)\n",
			result);
		goto err_dmx;
	}

	demux->dmxdev.filternum = demux->dvb_demux.filternum;
	demux->dmxdev.demux = &demux->dvb_demux.dmx;
	demux->dmxdev.capabilities = 0;

	result = FUNC3(&demux->dmxdev, adap);
	if (result < 0) {
		FUNC0(fei->dev, "dvb_dmxdev_init failed (errno = %d)\n",
			result);

		goto err_dmxdev;
	}

	demux->hw_frontend.source = DMX_FRONTEND_0 + demux->tsin_index;

	result = demux->dvb_demux.dmx.add_frontend(&demux->dvb_demux.dmx,
						&demux->hw_frontend);
	if (result < 0) {
		FUNC0(fei->dev, "add_frontend failed (errno = %d)\n", result);
		goto err_fe_hw;
	}

	demux->mem_frontend.source = DMX_MEMORY_FE;
	result = demux->dvb_demux.dmx.add_frontend(&demux->dvb_demux.dmx,
						&demux->mem_frontend);
	if (result < 0) {
		FUNC0(fei->dev, "add_frontend failed (%d)\n", result);
		goto err_fe_mem;
	}

	result = demux->dvb_demux.dmx.connect_frontend(&demux->dvb_demux.dmx,
							&demux->hw_frontend);
	if (result < 0) {
		FUNC0(fei->dev, "connect_frontend (%d)\n", result);
		goto err_fe_con;
	}

	return 0;

err_fe_con:
	demux->dvb_demux.dmx.remove_frontend(&demux->dvb_demux.dmx,
						     &demux->mem_frontend);
err_fe_mem:
	demux->dvb_demux.dmx.remove_frontend(&demux->dvb_demux.dmx,
						     &demux->hw_frontend);
err_fe_hw:
	FUNC4(&demux->dmxdev);
err_dmxdev:
	FUNC2(&demux->dvb_demux);
err_dmx:
	return result;

}