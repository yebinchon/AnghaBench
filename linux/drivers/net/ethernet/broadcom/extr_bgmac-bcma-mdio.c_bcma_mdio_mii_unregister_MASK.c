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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 

void FUNC2(struct mii_bus *mii_bus)
{
	if (!mii_bus)
		return;

	FUNC1(mii_bus);
	FUNC0(mii_bus);
}