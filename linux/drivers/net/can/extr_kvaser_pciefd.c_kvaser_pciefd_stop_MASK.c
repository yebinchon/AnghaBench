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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct kvaser_pciefd_can {int /*<<< orphan*/  bec_poll_timer; scalar_t__ reg_base; TYPE_1__ can; int /*<<< orphan*/  flush_comp; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ KVASER_PCIEFD_KCAN_IEN_REG ; 
 int /*<<< orphan*/  KVASER_PCIEFD_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_pciefd_can*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct kvaser_pciefd_can* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct kvaser_pciefd_can *can = FUNC6(netdev);
	int ret = 0;

	/* Don't interrupt ongoing flush */
	if (!FUNC1(&can->flush_comp))
		FUNC4(can);

	if (!FUNC7(&can->flush_comp,
					 KVASER_PCIEFD_WAIT_TIMEOUT)) {
		FUNC5(can->can.dev, "Timeout during stop\n");
		ret = -ETIMEDOUT;
	} else {
		FUNC3(0, can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);
		FUNC2(&can->bec_poll_timer);
	}
	FUNC0(netdev);

	return ret;
}