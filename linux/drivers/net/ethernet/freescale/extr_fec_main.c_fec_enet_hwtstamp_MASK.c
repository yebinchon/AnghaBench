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
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct fec_enet_private {int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC5(struct fec_enet_private *fep, unsigned ts,
	struct skb_shared_hwtstamps *hwtstamps)
{
	unsigned long flags;
	u64 ns;

	FUNC2(&fep->tmreg_lock, flags);
	ns = FUNC4(&fep->tc, ts);
	FUNC3(&fep->tmreg_lock, flags);

	FUNC0(hwtstamps, 0, sizeof(*hwtstamps));
	hwtstamps->hwtstamp = FUNC1(ns);
}