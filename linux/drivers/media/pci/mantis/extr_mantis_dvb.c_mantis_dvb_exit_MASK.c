#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct mantis_pci {int /*<<< orphan*/  dvb_adapter; TYPE_3__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  fe_hw; int /*<<< orphan*/  fe_mem; int /*<<< orphan*/  dvbnet; int /*<<< orphan*/  tasklet; scalar_t__ fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mantis_pci *mantis)
{
	int err;

	if (mantis->fe) {
		/* mantis_ca_exit(mantis); */
		err = FUNC7(mantis);
		if (err != 0)
			FUNC0(MANTIS_ERROR, 1, "Frontend exit while POWER ON! <%d>", err);
		FUNC6(mantis->fe);
		FUNC3(mantis->fe);
	}

	FUNC10(&mantis->tasklet);
	FUNC4(&mantis->dvbnet);

	mantis->demux.dmx.remove_frontend(&mantis->demux.dmx, &mantis->fe_mem);
	mantis->demux.dmx.remove_frontend(&mantis->demux.dmx, &mantis->fe_hw);

	FUNC2(&mantis->dmxdev);
	FUNC1(&mantis->demux);

	FUNC0(MANTIS_DEBUG, 1, "dvb_unregister_adapter");
	FUNC5(&mantis->dvb_adapter);

	return 0;
}