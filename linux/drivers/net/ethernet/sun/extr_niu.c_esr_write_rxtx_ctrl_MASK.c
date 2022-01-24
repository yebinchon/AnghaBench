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
typedef  int u32 ;
struct niu {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  NIU_ESR_DEV_ADDR ; 
 int FUNC2 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct niu *np, unsigned long chan, u32 val)
{
	int err;

	err = FUNC2(np, np->port, NIU_ESR_DEV_ADDR,
			 FUNC1(chan), val & 0xffff);
	if (!err)
		err = FUNC2(np, np->port, NIU_ESR_DEV_ADDR,
				 FUNC0(chan), (val >> 16));
	return err;
}