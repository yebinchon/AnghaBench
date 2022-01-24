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
typedef  int u16 ;
struct timer_list {int dummy; } ;
struct skge_port {int port; int /*<<< orphan*/  link_timer; struct skge_hw* hw; struct net_device* netdev; } ;
struct skge_hw {int /*<<< orphan*/  phy_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ LINK_HZ ; 
 int XM_GP_INP_ASS ; 
 int /*<<< orphan*/  XM_GP_PORT ; 
 int /*<<< orphan*/  XM_IMSK ; 
 int /*<<< orphan*/  XM_ISRC ; 
 int XM_IS_INP_ASS ; 
 struct skge_port* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct skge_port* skge ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int FUNC7 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct skge_port *skge = FUNC0(skge, t, link_timer);
	struct net_device *dev = skge->netdev;
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	int i;
	unsigned long flags;

	if (!FUNC2(dev))
		return;

	FUNC4(&hw->phy_lock, flags);

	/*
	 * Verify that the link by checking GPIO register three times.
	 * This pin has the signal from the link_sync pin connected to it.
	 */
	for (i = 0; i < 3; i++) {
		if (FUNC7(hw, port, XM_GP_PORT) & XM_GP_INP_ASS)
			goto link_down;
	}

	/* Re-enable interrupt to detect link down */
	if (FUNC6(dev)) {
		u16 msk = FUNC7(hw, port, XM_IMSK);
		msk &= ~XM_IS_INP_ASS;
		FUNC8(hw, port, XM_IMSK, msk);
		FUNC7(hw, port, XM_ISRC);
	} else {
link_down:
		FUNC1(&skge->link_timer,
			  FUNC3(jiffies + LINK_HZ));
	}
	FUNC5(&hw->phy_lock, flags);
}