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
struct TYPE_4__ {TYPE_1__* nd_tbl; } ;
struct TYPE_3__ {int /*<<< orphan*/  parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int /*<<< orphan*/  DELAY_PROBE_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* ipv6_stub ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	if (FUNC0(CONFIG_IPV6) && ipv6_stub->nd_tbl)
		return FUNC1(&ipv6_stub->nd_tbl->parms, DELAY_PROBE_TIME);

	return ~0UL;
}