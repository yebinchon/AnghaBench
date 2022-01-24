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
struct fman_mac {int /*<<< orphan*/  regs; int /*<<< orphan*/  memac_drv_param; } ;
typedef  scalar_t__ enet_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct fman_mac *memac, enet_addr_t *enet_addr)
{
	if (!FUNC1(memac->memac_drv_param))
		return -EINVAL;

	FUNC0(memac->regs, (u8 *)(*enet_addr), 0);

	return 0;
}