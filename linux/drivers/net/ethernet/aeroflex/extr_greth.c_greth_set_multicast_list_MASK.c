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
struct net_device {int flags; } ;
struct greth_regs {int /*<<< orphan*/  control; int /*<<< orphan*/  hash_lsb; int /*<<< orphan*/  hash_msb; } ;
struct greth_private {scalar_t__ multicast; struct greth_regs* regs; } ;

/* Variables and functions */
 int GRETH_CTRL_MCEN ; 
 int GRETH_CTRL_PR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct greth_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	int cfg;
	struct greth_private *greth = FUNC4(dev);
	struct greth_regs *regs = greth->regs;

	cfg = FUNC0(regs->control);
	if (dev->flags & IFF_PROMISC)
		cfg |= GRETH_CTRL_PR;
	else
		cfg &= ~GRETH_CTRL_PR;

	if (greth->multicast) {
		if (dev->flags & IFF_ALLMULTI) {
			FUNC1(regs->hash_msb, -1);
			FUNC1(regs->hash_lsb, -1);
			cfg |= GRETH_CTRL_MCEN;
			FUNC1(regs->control, cfg);
			return;
		}

		if (FUNC3(dev)) {
			cfg &= ~GRETH_CTRL_MCEN;
			FUNC1(regs->control, cfg);
			return;
		}

		/* Setup multicast filter */
		FUNC2(dev);
		cfg |= GRETH_CTRL_MCEN;
	}
	FUNC1(regs->control, cfg);
}