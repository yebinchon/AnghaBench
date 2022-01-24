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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct cpsw_ale *ale, u32 *ale_entry,
				    int reg_mcast, int unreg_mcast)
{
	int idx;

	/* Set VLAN registered multicast flood mask */
	idx = FUNC1(ale_entry);
	FUNC3(reg_mcast, ale->params.ale_regs + FUNC0(idx));

	/* Set VLAN unregistered multicast flood mask */
	idx = FUNC2(ale_entry);
	FUNC3(unreg_mcast, ale->params.ale_regs + FUNC0(idx));
}