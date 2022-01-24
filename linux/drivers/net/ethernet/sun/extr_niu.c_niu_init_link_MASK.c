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
struct niu_parent {scalar_t__ plat_type; } ;
struct niu {int flags; struct niu_parent* parent; } ;

/* Variables and functions */
 int NIU_FLAGS_HOTPLUG_PHY ; 
 scalar_t__ PLAT_TYPE_NIU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int*) ; 
 int FUNC2 (struct niu*) ; 
 int FUNC3 (struct niu*) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	struct niu_parent *parent = np->parent;
	int err, ignore;

	if (parent->plat_type == PLAT_TYPE_NIU) {
		err = FUNC3(np);
		if (err)
			return err;
		FUNC0(200);
	}
	err = FUNC2(np);
	if (err && !(np->flags & NIU_FLAGS_HOTPLUG_PHY))
		return err;
	FUNC0(200);
	err = FUNC3(np);
	if (!err || (np->flags & NIU_FLAGS_HOTPLUG_PHY))
		FUNC1(np, &ignore);
	return 0;
}