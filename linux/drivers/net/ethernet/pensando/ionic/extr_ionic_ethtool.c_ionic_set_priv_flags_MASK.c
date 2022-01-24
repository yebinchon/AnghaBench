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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_LIF_SW_DEBUG_STATS ; 
 int PRIV_F_SW_DBG_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ionic_lif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, u32 priv_flags)
{
	struct ionic_lif *lif = FUNC1(netdev);
	u32 flags = lif->flags;

	FUNC0(IONIC_LIF_SW_DEBUG_STATS, lif->state);
	if (priv_flags & PRIV_F_SW_DBG_STATS)
		FUNC2(IONIC_LIF_SW_DEBUG_STATS, lif->state);

	if (flags != lif->flags)
		lif->flags = flags;

	return 0;
}