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
struct niu {int /*<<< orphan*/  orig_led_state; } ;
struct net_device {int dummy; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int EAGAIN ; 
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 struct niu* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			   enum ethtool_phys_id_state state)

{
	struct niu *np = FUNC0(dev);

	if (!FUNC1(dev))
		return -EAGAIN;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		np->orig_led_state = FUNC4(np);
		return 1;	/* cycle on/off once per second */

	case ETHTOOL_ID_ON:
		FUNC2(np, 1);
		break;

	case ETHTOOL_ID_OFF:
		FUNC2(np, 0);
		break;

	case ETHTOOL_ID_INACTIVE:
		FUNC3(np, np->orig_led_state);
	}

	return 0;
}