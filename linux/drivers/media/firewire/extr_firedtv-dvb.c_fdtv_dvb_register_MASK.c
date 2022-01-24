#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;scalar_t__ capabilities; } ;
struct TYPE_13__ {int filternum; int feednum; TYPE_1__ dmx; int /*<<< orphan*/ * write_to_decoder; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; struct firedtv* priv; } ;
struct TYPE_16__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_15__ {int /*<<< orphan*/  source; } ;
struct firedtv {int /*<<< orphan*/  device; int /*<<< orphan*/  adapter; TYPE_11__ demux; TYPE_9__ dmxdev; TYPE_2__ frontend; int /*<<< orphan*/  dvbnet; int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_FRONTEND_0 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int FUNC4 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC12 (struct firedtv*,char const*) ; 
 int /*<<< orphan*/  fdtv_start_feed ; 
 int /*<<< orphan*/  fdtv_stop_feed ; 
 int FUNC13 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC14 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 

int FUNC17(struct firedtv *fdtv, const char *name)
{
	int err;

	err = FUNC8(&fdtv->adapter, name,
				   THIS_MODULE, fdtv->device, adapter_nr);
	if (err < 0)
		goto fail_log;

	/*DMX_TS_FILTERING | DMX_SECTION_FILTERING*/
	fdtv->demux.dmx.capabilities = 0;

	fdtv->demux.priv	= fdtv;
	fdtv->demux.filternum	= 16;
	fdtv->demux.feednum	= 16;
	fdtv->demux.start_feed	= fdtv_start_feed;
	fdtv->demux.stop_feed	= fdtv_stop_feed;
	fdtv->demux.write_to_decoder = NULL;

	err = FUNC2(&fdtv->demux);
	if (err)
		goto fail_unreg_adapter;

	fdtv->dmxdev.filternum    = 16;
	fdtv->dmxdev.demux        = &fdtv->demux.dmx;
	fdtv->dmxdev.capabilities = 0;

	err = FUNC4(&fdtv->dmxdev, &fdtv->adapter);
	if (err)
		goto fail_dmx_release;

	fdtv->frontend.source = DMX_FRONTEND_0;

	err = fdtv->demux.dmx.add_frontend(&fdtv->demux.dmx, &fdtv->frontend);
	if (err)
		goto fail_dmxdev_release;

	err = fdtv->demux.dmx.connect_frontend(&fdtv->demux.dmx,
					       &fdtv->frontend);
	if (err)
		goto fail_rem_frontend;

	err = FUNC6(&fdtv->adapter, &fdtv->dvbnet, &fdtv->demux.dmx);
	if (err)
		goto fail_disconnect_frontend;

	FUNC12(fdtv, name);
	err = FUNC9(&fdtv->adapter, &fdtv->fe);
	if (err)
		goto fail_net_release;

	err = FUNC11(fdtv);
	if (err)
		FUNC1(fdtv->device,
			 "Conditional Access Module not enabled\n");
	return 0;

fail_net_release:
	FUNC7(&fdtv->dvbnet);
fail_disconnect_frontend:
	fdtv->demux.dmx.close(&fdtv->demux.dmx);
fail_rem_frontend:
	fdtv->demux.dmx.remove_frontend(&fdtv->demux.dmx, &fdtv->frontend);
fail_dmxdev_release:
	FUNC5(&fdtv->dmxdev);
fail_dmx_release:
	FUNC3(&fdtv->demux);
fail_unreg_adapter:
	FUNC10(&fdtv->adapter);
fail_log:
	FUNC0(fdtv->device, "DVB initialization failed\n");
	return err;
}