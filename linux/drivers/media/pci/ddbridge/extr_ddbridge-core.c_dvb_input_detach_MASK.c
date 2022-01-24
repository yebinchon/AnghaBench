#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct dvb_demux {TYPE_2__ dmx; } ;
struct ddb_input {int nr; TYPE_1__* port; } ;
struct ddb_dvb {int attached; struct dvb_demux demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  dvbnet; int /*<<< orphan*/ * fe2; int /*<<< orphan*/ * fe; int /*<<< orphan*/ ** i2c_client; } ;
struct TYPE_4__ {struct ddb_dvb* dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ddb_input *input)
{
	struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
	struct dvb_demux *dvbdemux = &dvb->demux;

	switch (dvb->attached) {
	case 0x31:
		if (dvb->fe2)
			FUNC5(dvb->fe2);
		if (dvb->fe)
			FUNC5(dvb->fe);
		/* fallthrough */
	case 0x30:
		FUNC3(dvb->i2c_client[0]);
		dvb->i2c_client[0] = NULL;

		if (dvb->fe2)
			FUNC2(dvb->fe2);
		if (dvb->fe)
			FUNC2(dvb->fe);
		dvb->fe = NULL;
		dvb->fe2 = NULL;
		/* fallthrough */
	case 0x20:
		FUNC4(&dvb->dvbnet);
		/* fallthrough */
	case 0x12:
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &dvb->hw_frontend);
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &dvb->mem_frontend);
		/* fallthrough */
	case 0x11:
		FUNC1(&dvb->dmxdev);
		/* fallthrough */
	case 0x10:
		FUNC0(&dvb->demux);
		/* fallthrough */
	case 0x01:
		break;
	}
	dvb->attached = 0x00;
}