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
struct fimc_is {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCUCTL_REG_INTGR0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fimc_is*,int /*<<< orphan*/ ) ; 

void FUNC2(struct fimc_is *is)
{
	FUNC1(FUNC0(0), is, MCUCTL_REG_INTGR0);
}