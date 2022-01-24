#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* heartbeat_init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpc_hb_timer ; 

__attribute__((used)) static void
FUNC3(void)
{
	xpc_arch_ops.heartbeat_init();
	FUNC1(&xpc_hb_timer, xpc_hb_beater, 0);
	FUNC2(0);
}