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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ican3_dev {int /*<<< orphan*/  echoq; int /*<<< orphan*/  ndev; TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ican3_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ican3_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct ican3_dev *mod = FUNC3(ndev);
	int ret;

	/* stop the network device xmit routine */
	FUNC4(ndev);
	mod->can.state = CAN_STATE_STOPPED;

	/* bring the bus offline, stop receiving packets */
	ret = FUNC1(mod, false);
	if (ret) {
		FUNC2(mod->ndev, "unable to set bus-off\n");
		return ret;
	}

	/* drop all outstanding echo skbs */
	FUNC5(&mod->echoq);

	/* close the CAN layer */
	FUNC0(ndev);
	return 0;
}