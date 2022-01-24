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
struct mlxsw_sp1_ptp_unmatched {scalar_t__ skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp1_ptp_unmatched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC2(void *ptr, void *arg)
{
	struct mlxsw_sp1_ptp_unmatched *unmatched = ptr;

	/* This is invoked at a point where the ports are gone already. Nothing
	 * to do with whatever is left in the HT but to free it.
	 */
	if (unmatched->skb)
		FUNC0(unmatched->skb);
	FUNC1(unmatched, rcu);
}