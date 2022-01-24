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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ arb_divider; } ;
struct baycom_state {int /*<<< orphan*/  hdrv; TYPE_1__ modem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct baycom_state* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct baycom_state*) ; 

__attribute__((used)) static void FUNC10(void *dev_id)
{
	struct net_device *dev = dev_id;
	struct baycom_state *bc = FUNC7(dev);

	FUNC0(bc);
	/*
	 * check if transmitter active
	 */
	if (FUNC2(&bc->hdrv))
		FUNC9(dev, bc);
	else {
		FUNC8(dev, bc);
		if (--bc->modem.arb_divider <= 0) {
			bc->modem.arb_divider = 6;
			FUNC6();
			FUNC1(dev, &bc->hdrv);
		}
	}
	FUNC6();
	FUNC4(dev, &bc->hdrv);
	FUNC3(dev, &bc->hdrv);
        FUNC5();
}