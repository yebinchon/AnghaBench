#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slave {int dummy; } ;
struct TYPE_3__ {scalar_t__ min_links; } ;
struct bonding {int /*<<< orphan*/  dev; TYPE_1__ params; } ;
struct aggregator {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  aggregator; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct slave*) ; 
 scalar_t__ FUNC1 (struct aggregator*) ; 
 struct aggregator* FUNC2 (int /*<<< orphan*/ *) ; 
 struct slave* FUNC3 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct bonding *bond)
{
	struct aggregator *active;
	struct slave *first_slave;
	int ret = 1;

	FUNC7();
	first_slave = FUNC3(bond);
	if (!first_slave) {
		ret = 0;
		goto out;
	}
	active = FUNC2(&(FUNC0(first_slave)->aggregator));
	if (active) {
		/* are enough slaves available to consider link up? */
		if (FUNC1(active) < bond->params.min_links) {
			if (FUNC5(bond->dev)) {
				FUNC4(bond->dev);
				goto out;
			}
		} else if (!FUNC5(bond->dev)) {
			FUNC6(bond->dev);
			goto out;
		}
	} else if (FUNC5(bond->dev)) {
		FUNC4(bond->dev);
	}
out:
	FUNC8();
	return ret;
}