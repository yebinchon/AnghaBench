#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * arp_targets; } ;
struct bonding {int /*<<< orphan*/  dev; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct bonding *bond, __be32 target)
{
	__be32 *targets = bond->params.arp_targets;
	int ind;

	if (!FUNC2(target)) {
		FUNC4(bond->dev, "invalid ARP target %pI4 specified for addition\n",
			   &target);
		return -EINVAL;
	}

	if (FUNC1(targets, target) != -1) { /* dup */
		FUNC4(bond->dev, "ARP target %pI4 is already present\n",
			   &target);
		return -EINVAL;
	}

	ind = FUNC1(targets, 0); /* first free slot */
	if (ind == -1) {
		FUNC4(bond->dev, "ARP target table is full!\n");
		return -EINVAL;
	}

	FUNC3(bond->dev, "Adding ARP target %pI4\n", &target);

	FUNC0(bond, ind, target, jiffies);

	return 0;
}