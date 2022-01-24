#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fst_port_info {int run; size_t index; scalar_t__ hwif; scalar_t__ txqs; scalar_t__ txqe; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_OPEN ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FST_RUNNING ; 
 int IPSTS_DCD ; 
 int IPSTS_INDICATE ; 
 int OPSTS_DTR ; 
 int OPSTS_RTS ; 
 int /*<<< orphan*/  STARTPORT ; 
 int /*<<< orphan*/  STOPPORT ; 
 scalar_t__ X21 ; 
 scalar_t__ X21D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_port_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fst_port_info*) ; 
 int /*<<< orphan*/ * v24DebouncedSts ; 

__attribute__((used)) static void
FUNC9(struct fst_port_info *port)
{
	int signals;

	/* Only init things if card is actually running. This allows open to
	 * succeed for downloads etc.
	 */
	if (port->card->state == FST_RUNNING) {
		if (port->run) {
			FUNC1(DBG_OPEN, "open: found port already running\n");

			FUNC2(port, STOPPORT);
			port->run = 0;
		}

		FUNC4(port);
		FUNC5(port);
		FUNC3(port, OPSTS_RTS | OPSTS_DTR);

		FUNC2(port, STARTPORT);
		port->run = 1;

		signals = FUNC0(port->card, v24DebouncedSts[port->index]);
		if (signals & (((port->hwif == X21) || (port->hwif == X21D))
			       ? IPSTS_INDICATE : IPSTS_DCD))
			FUNC7(FUNC8(port));
		else
			FUNC6(FUNC8(port));

		port->txqe = 0;
		port->txqs = 0;
	}

}