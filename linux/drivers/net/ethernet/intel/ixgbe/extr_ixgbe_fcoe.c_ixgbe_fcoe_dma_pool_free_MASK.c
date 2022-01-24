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
struct ixgbe_fcoe_ddp_pool {int /*<<< orphan*/ * pool; } ;
struct ixgbe_fcoe {int /*<<< orphan*/  ddp_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ixgbe_fcoe_ddp_pool* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct ixgbe_fcoe *fcoe, unsigned int cpu)
{
	struct ixgbe_fcoe_ddp_pool *ddp_pool;

	ddp_pool = FUNC1(fcoe->ddp_pool, cpu);
	FUNC0(ddp_pool->pool);
	ddp_pool->pool = NULL;
}