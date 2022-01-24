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
struct TYPE_2__ {int /*<<< orphan*/  tickcnt; } ;
struct brcmf_sdio {int /*<<< orphan*/  watchdog_wait; TYPE_1__ sdcnt; int /*<<< orphan*/  sdiodev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(void *data)
{
	struct brcmf_sdio *bus = (struct brcmf_sdio *)data;
	int wait;

	FUNC0(SIGTERM);
	/* Run until signal received */
	FUNC2(bus->sdiodev);
	while (1) {
		if (FUNC5())
			break;
		FUNC3(bus->sdiodev);
		wait = FUNC7(&bus->watchdog_wait);
		FUNC2(bus->sdiodev);
		FUNC4(bus->sdiodev);
		if (!wait) {
			FUNC1(bus);
			/* Count the tick for reference */
			bus->sdcnt.tickcnt++;
			FUNC6(&bus->watchdog_wait);
		} else
			break;
	}
	return 0;
}