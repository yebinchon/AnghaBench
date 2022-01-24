#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct av7110 {int /*<<< orphan*/  osd_dev; int /*<<< orphan*/ * fe; struct dvb_demux demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  dvb_net; struct dvb_demux demux1; int /*<<< orphan*/  dmxdev1; int /*<<< orphan*/  dvb_net1; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct av7110*) ; 
 int /*<<< orphan*/  FUNC1 (struct av7110*) ; 
 scalar_t__ budgetpatch ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct av7110 *av7110)
{
	struct dvb_demux *dvbdemux = &av7110->demux;
	struct dvb_demux *dvbdemux1 = &av7110->demux1;

	FUNC2(4, "%p\n", av7110);

	if (!av7110->registered)
		return;

	if (budgetpatch) {
		FUNC6(&av7110->dvb_net1);
		dvbdemux->dmx.close(&dvbdemux1->dmx);
		FUNC4(&av7110->dmxdev1);
		FUNC3(&av7110->demux1);
	}

	FUNC6(&av7110->dvb_net);

	dvbdemux->dmx.close(&dvbdemux->dmx);
	dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &av7110->hw_frontend);
	dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &av7110->mem_frontend);

	FUNC4(&av7110->dmxdev);
	FUNC3(&av7110->demux);

	if (av7110->fe != NULL) {
		FUNC8(av7110->fe);
		FUNC5(av7110->fe);
	}
	FUNC7(av7110->osd_dev);
	FUNC0(av7110);
	FUNC1(av7110);
}