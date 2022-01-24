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
struct net_device {int dummy; } ;
struct dcb_app {scalar_t__ priority; int selector; int protocol; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE_8021QAZ_APP_SEL_DSCP 129 
#define  IEEE_8021QAZ_APP_SEL_ETHERTYPE 128 
 scalar_t__ IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct dcb_app*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				       struct dcb_app *app)
{
	int prio;

	if (app->priority >= IEEE_8021QAZ_MAX_TCS) {
		FUNC2(dev, "APP entry with priority value %u is invalid\n",
			   app->priority);
		return -EINVAL;
	}

	switch (app->selector) {
	case IEEE_8021QAZ_APP_SEL_DSCP:
		if (app->protocol >= 64) {
			FUNC2(dev, "DSCP APP entry with protocol value %u is invalid\n",
				   app->protocol);
			return -EINVAL;
		}

		/* Warn about any DSCP APP entries with the same PID. */
		prio = FUNC1(FUNC0(dev, app));
		if (prio--) {
			if (prio < app->priority)
				FUNC3(dev, "Choosing priority %d for DSCP %d in favor of previously-active value of %d\n",
					    app->priority, app->protocol, prio);
			else if (prio > app->priority)
				FUNC3(dev, "Ignoring new priority %d for DSCP %d in favor of current value of %d\n",
					    app->priority, app->protocol, prio);
		}
		break;

	case IEEE_8021QAZ_APP_SEL_ETHERTYPE:
		if (app->protocol) {
			FUNC2(dev, "EtherType APP entries with protocol value != 0 not supported\n");
			return -EINVAL;
		}
		break;

	default:
		FUNC2(dev, "APP entries with selector %u not supported\n",
			   app->selector);
		return -EINVAL;
	}

	return 0;
}