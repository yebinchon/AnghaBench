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
struct budget {struct dvb_demux demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  dvb_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct budget *budget)
{
	struct dvb_demux *dvbdemux = &budget->demux;

	FUNC0(2, "budget: %p\n", budget);

	FUNC3(&budget->dvb_net);

	dvbdemux->dmx.close(&dvbdemux->dmx);
	dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &budget->hw_frontend);
	dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &budget->mem_frontend);

	FUNC2(&budget->dmxdev);
	FUNC1(&budget->demux);
}