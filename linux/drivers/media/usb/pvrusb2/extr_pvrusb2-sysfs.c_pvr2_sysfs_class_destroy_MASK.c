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
struct pvr2_sysfs_class {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pvr2_sysfs_class*) ; 

void FUNC2(struct pvr2_sysfs_class *clp)
{
	FUNC1("Unregistering pvr2_sysfs_class id=%p", clp);
	if (clp)
		FUNC0(&clp->class);
}