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
struct atl1_adapter {int /*<<< orphan*/  int_enabled; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMR_NORXTX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct atl1_adapter* adapter)
{
	if (!FUNC2(&adapter->napi))
		/* It is possible in case even the RX/TX ints are disabled via IMR
		 * register the ISR bits are set anyway (but do not produce IRQ).
		 * To handle such situation the napi functions used to check is
		 * something scheduled or not.
		 */
		return 0;

	FUNC0(&adapter->napi);

	/*
	 * Disable RX/TX ints via IMR register if it is
	 * allowed. NAPI handler must reenable them in same
	 * way.
	 */
	if (!adapter->int_enabled)
		return 1;

	FUNC1(adapter, IMR_NORXTX_MASK);
	return 1;
}