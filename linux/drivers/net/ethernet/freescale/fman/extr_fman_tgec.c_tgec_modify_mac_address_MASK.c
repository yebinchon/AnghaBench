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
typedef  int /*<<< orphan*/  u8 ;
struct fman_mac {int /*<<< orphan*/  regs; int /*<<< orphan*/  addr; int /*<<< orphan*/  cfg; } ;
typedef  scalar_t__ enet_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct fman_mac *tgec, enet_addr_t *p_enet_addr)
{
	if (!FUNC1(tgec->cfg))
		return -EINVAL;

	tgec->addr = FUNC0(*p_enet_addr);
	FUNC2(tgec->regs, (u8 *)(*p_enet_addr));

	return 0;
}