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
typedef  scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct nic {scalar_t__ mac; int flags; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  netdev; int /*<<< orphan*/  cmd_lock; TYPE_2__* csr; int /*<<< orphan*/  mii; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_hi; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 scalar_t__ E100_WATCHDOG_PERIOD ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct nic*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*) ; 
 scalar_t__ FUNC4 (struct ethtool_cmd*) ; 
 struct nic* FUNC5 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int ich ; 
 int ich_10h_workaround ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int irq_sw_gen ; 
 scalar_t__ jiffies ; 
 scalar_t__ mac_82557_D100_C ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct nic* nic ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  watchdog ; 

__attribute__((used)) static void FUNC18(struct timer_list *t)
{
	struct nic *nic = FUNC5(nic, t, watchdog);
	struct ethtool_cmd cmd = { .cmd = ETHTOOL_GSET };
	u32 speed;

	FUNC14(nic, timer, KERN_DEBUG, nic->netdev,
		     "right now = %ld\n", jiffies);

	/* mii library handles link maintenance tasks */

	FUNC9(&nic->mii, &cmd);
	speed = FUNC4(&cmd);

	if (FUNC10(&nic->mii) && !FUNC13(nic->netdev)) {
		FUNC12(nic->netdev, "NIC Link is Up %u Mbps %s Duplex\n",
			    speed == SPEED_100 ? 100 : 10,
			    cmd.duplex == DUPLEX_FULL ? "Full" : "Half");
	} else if (!FUNC10(&nic->mii) && FUNC13(nic->netdev)) {
		FUNC12(nic->netdev, "NIC Link is Down\n");
	}

	FUNC8(&nic->mii);

	/* Software generated interrupt to recover from (rare) Rx
	 * allocation failure.
	 * Unfortunately have to use a spinlock to not re-enable interrupts
	 * accidentally, due to hardware that shares a register between the
	 * interrupt mask bit and the SW Interrupt generation bit */
	FUNC16(&nic->cmd_lock);
	FUNC7(FUNC6(&nic->csr->scb.cmd_hi) | irq_sw_gen,&nic->csr->scb.cmd_hi);
	FUNC3(nic);
	FUNC17(&nic->cmd_lock);

	FUNC2(nic);
	FUNC0(nic, speed, cmd.duplex);

	if (nic->mac <= mac_82557_D100_C)
		/* Issue a multicast command to workaround a 557 lock up */
		FUNC1(nic->netdev);

	if (nic->flags & ich && speed == SPEED_10 && cmd.duplex == DUPLEX_HALF)
		/* Need SW workaround for ICH[x] 10Mbps/half duplex Tx hang. */
		nic->flags |= ich_10h_workaround;
	else
		nic->flags &= ~ich_10h_workaround;

	FUNC11(&nic->watchdog,
		  FUNC15(jiffies + E100_WATCHDOG_PERIOD));
}