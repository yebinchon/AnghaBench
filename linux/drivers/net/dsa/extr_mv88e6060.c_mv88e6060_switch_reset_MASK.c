#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mv88e6060_priv {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GLOBAL_ATU_CONTROL ; 
 int GLOBAL_ATU_CONTROL_LEARNDIS ; 
 int GLOBAL_ATU_CONTROL_SWRESET ; 
 int /*<<< orphan*/  GLOBAL_STATUS ; 
 int GLOBAL_STATUS_INIT_READY ; 
 int HZ ; 
 int MV88E6060_PORTS ; 
 int /*<<< orphan*/  PORT_CONTROL ; 
 int PORT_CONTROL_STATE_MASK ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int jiffies ; 
 int FUNC1 (struct mv88e6060_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv88e6060_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct mv88e6060_priv *priv)
{
	int i;
	int ret;
	unsigned long timeout;

	/* Set all ports to the disabled state. */
	for (i = 0; i < MV88E6060_PORTS; i++) {
		ret = FUNC1(priv, FUNC0(i), PORT_CONTROL);
		if (ret < 0)
			return ret;
		ret = FUNC2(priv, FUNC0(i), PORT_CONTROL,
				ret & ~PORT_CONTROL_STATE_MASK);
		if (ret)
			return ret;
	}

	/* Wait for transmit queues to drain. */
	FUNC5(2000, 4000);

	/* Reset the switch. */
	ret = FUNC2(priv, REG_GLOBAL, GLOBAL_ATU_CONTROL,
			GLOBAL_ATU_CONTROL_SWRESET |
			GLOBAL_ATU_CONTROL_LEARNDIS);
	if (ret)
		return ret;

	/* Wait up to one second for reset to complete. */
	timeout = jiffies + 1 * HZ;
	while (FUNC4(jiffies, timeout)) {
		ret = FUNC1(priv, REG_GLOBAL, GLOBAL_STATUS);
		if (ret < 0)
			return ret;

		if (ret & GLOBAL_STATUS_INIT_READY)
			break;

		FUNC5(1000, 2000);
	}
	if (FUNC3(jiffies, timeout))
		return -ETIMEDOUT;

	return 0;
}