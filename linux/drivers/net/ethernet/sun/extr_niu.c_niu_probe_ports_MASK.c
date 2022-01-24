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
struct niu_parent {scalar_t__ port_phy; } ;
struct niu {struct niu_parent* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int LDN_MAX ; 
 scalar_t__ PORT_PHY_INVALID ; 
 scalar_t__ PORT_PHY_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int) ; 
 int FUNC2 (struct niu*,struct niu_parent*) ; 

__attribute__((used)) static int FUNC3(struct niu *np)
{
	struct niu_parent *parent = np->parent;
	int err, i;

	if (parent->port_phy == PORT_PHY_UNKNOWN) {
		err = FUNC2(np, parent);
		if (err)
			return err;

		FUNC1(np, 2);
		for (i = 0; i <= LDN_MAX; i++)
			FUNC0(np, i, 0);
	}

	if (parent->port_phy == PORT_PHY_INVALID)
		return -EINVAL;

	return 0;
}