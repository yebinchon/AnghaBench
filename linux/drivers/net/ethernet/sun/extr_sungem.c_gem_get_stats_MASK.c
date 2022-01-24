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
struct net_device_stats {int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct gem {scalar_t__ regs; int /*<<< orphan*/  cell_enabled; } ;

/* Variables and functions */
 scalar_t__ MAC_AERR ; 
 scalar_t__ MAC_ECOLL ; 
 scalar_t__ MAC_FCSERR ; 
 scalar_t__ MAC_LCOLL ; 
 scalar_t__ MAC_LERR ; 
 scalar_t__ FUNC0 (int) ; 
 struct gem* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct net_device_stats *FUNC6(struct net_device *dev)
{
	struct gem *gp = FUNC1(dev);

	/* I have seen this being called while the PM was in progress,
	 * so we shield against this. Let's also not poke at registers
	 * while the reset task is going on.
	 *
	 * TODO: Move stats collection elsewhere (link timer ?) and
	 * make this a nop to avoid all those synchro issues
	 */
	if (!FUNC2(dev) || !FUNC3(dev))
		goto bail;

	/* Better safe than sorry... */
	if (FUNC0(!gp->cell_enabled))
		goto bail;

	dev->stats.rx_crc_errors += FUNC4(gp->regs + MAC_FCSERR);
	FUNC5(0, gp->regs + MAC_FCSERR);

	dev->stats.rx_frame_errors += FUNC4(gp->regs + MAC_AERR);
	FUNC5(0, gp->regs + MAC_AERR);

	dev->stats.rx_length_errors += FUNC4(gp->regs + MAC_LERR);
	FUNC5(0, gp->regs + MAC_LERR);

	dev->stats.tx_aborted_errors += FUNC4(gp->regs + MAC_ECOLL);
	dev->stats.collisions +=
		(FUNC4(gp->regs + MAC_ECOLL) + FUNC4(gp->regs + MAC_LCOLL));
	FUNC5(0, gp->regs + MAC_ECOLL);
	FUNC5(0, gp->regs + MAC_LCOLL);
 bail:
	return &dev->stats;
}