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
struct velocity_info {int /*<<< orphan*/  mac_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_ANENABLE ; 
 int /*<<< orphan*/  BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct velocity_info *vptr)
{
	if (FUNC0(BMCR_ANENABLE, MII_BMCR, vptr->mac_regs))
		FUNC1(BMCR_ANRESTART, MII_BMCR, vptr->mac_regs);
	else
		FUNC1(BMCR_ANENABLE, MII_BMCR, vptr->mac_regs);
}