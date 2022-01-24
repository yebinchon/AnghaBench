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
struct e1000_adapter {int /*<<< orphan*/  systim_lock; int /*<<< orphan*/  tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter,
				      struct skb_shared_hwtstamps *hwtstamps,
				      u64 systim)
{
	u64 ns;
	unsigned long flags;

	FUNC2(&adapter->systim_lock, flags);
	ns = FUNC4(&adapter->tc, systim);
	FUNC3(&adapter->systim_lock, flags);

	FUNC0(hwtstamps, 0, sizeof(*hwtstamps));
	hwtstamps->hwtstamp = FUNC1(ns);
}