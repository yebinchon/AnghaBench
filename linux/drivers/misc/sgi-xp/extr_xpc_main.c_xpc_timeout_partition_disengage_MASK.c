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
struct xpc_partition {scalar_t__ disengage_timeout; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int (* partition_engaged ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 int /*<<< orphan*/  disengage_timer ; 
 struct xpc_partition* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct xpc_partition* part ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_partition*) ; 

__attribute__((used)) static void
FUNC6(struct timer_list *t)
{
	struct xpc_partition *part = FUNC2(part, t, disengage_timer);

	FUNC0(FUNC4(part->disengage_timeout));

	(void)FUNC5(part);

	FUNC0(part->disengage_timeout != 0);
	FUNC0(xpc_arch_ops.partition_engaged(FUNC1(part)));
}