#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct ngene_channel {int has_demux; int has_adapter; size_t number; struct dvb_demux demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  dvbnet; int /*<<< orphan*/ * fe; int /*<<< orphan*/ ** i2c_client; scalar_t__ i2c_client_fe; int /*<<< orphan*/ * fe2; int /*<<< orphan*/ * ci_dev; int /*<<< orphan*/  demux_tasklet; scalar_t__ running; struct ngene* dev; } ;
struct ngene {int /*<<< orphan*/ * adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ngene_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ngene_channel *chan)
{
	struct dvb_demux *dvbdemux = &chan->demux;
	struct ngene *dev = chan->dev;

	if (chan->running)
		FUNC8(chan, 0);

	FUNC12(&chan->demux_tasklet);

	if (chan->ci_dev) {
		FUNC6(chan->ci_dev);
		chan->ci_dev = NULL;
	}

	if (chan->fe2)
		FUNC7(chan->fe2);

	if (chan->fe) {
		FUNC7(chan->fe);

		/* release I2C client (tuner) if needed */
		if (chan->i2c_client_fe) {
			FUNC3(chan->i2c_client[0]);
			chan->i2c_client[0] = NULL;
		}

		FUNC2(chan->fe);
		chan->fe = NULL;
	}

	if (chan->has_demux) {
		FUNC4(&chan->dvbnet);
		dvbdemux->dmx.close(&dvbdemux->dmx);
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &chan->hw_frontend);
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &chan->mem_frontend);
		FUNC1(&chan->dmxdev);
		FUNC0(&chan->demux);
		chan->has_demux = false;
	}

	if (chan->has_adapter) {
		FUNC5(&dev->adapter[chan->number]);
		chan->has_adapter = false;
	}
}