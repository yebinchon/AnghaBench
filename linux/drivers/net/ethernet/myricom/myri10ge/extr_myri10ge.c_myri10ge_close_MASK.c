#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct myri10ge_priv {scalar_t__ running; int num_slices; scalar_t__ rebooted; int down_cnt; TYPE_2__* ss; int /*<<< orphan*/  down_wq; int /*<<< orphan*/  watchdog_timer; } ;
struct myri10ge_cmd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * req_bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  MXGEFW_CMD_ETHERNET_DOWN ; 
 scalar_t__ MYRI10GE_ETH_RUNNING ; 
 scalar_t__ MYRI10GE_ETH_STOPPED ; 
 scalar_t__ MYRI10GE_ETH_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct myri10ge_priv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct myri10ge_priv*,int /*<<< orphan*/ ,struct myri10ge_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct myri10ge_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct myri10ge_priv *mgp = FUNC7(dev);
	struct myri10ge_cmd cmd;
	int status, old_down_cnt;
	int i;

	if (mgp->running != MYRI10GE_ETH_RUNNING)
		return 0;

	if (mgp->ss[0].tx.req_bytes == NULL)
		return 0;

	FUNC0(&mgp->watchdog_timer);
	mgp->running = MYRI10GE_ETH_STOPPING;
	for (i = 0; i < mgp->num_slices; i++)
		FUNC5(&mgp->ss[i].napi);

	FUNC8(dev);

	FUNC10(dev);
	if (mgp->rebooted == 0) {
		old_down_cnt = mgp->down_cnt;
		FUNC1();
		status =
		    FUNC4(mgp, MXGEFW_CMD_ETHERNET_DOWN, &cmd, 0);
		if (status)
			FUNC6(dev, "Couldn't bring down link\n");

		FUNC11(mgp->down_wq, old_down_cnt != mgp->down_cnt,
				   HZ);
		if (old_down_cnt == mgp->down_cnt)
			FUNC6(dev, "never got down irq\n");
	}
	FUNC9(dev);
	FUNC2(mgp);
	for (i = 0; i < mgp->num_slices; i++)
		FUNC3(&mgp->ss[i]);

	mgp->running = MYRI10GE_ETH_STOPPED;
	return 0;
}