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
struct bonding {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  bond_upper_dev_walk ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct bonding *bond, __be32 ip)
{
	bool ret = false;

	if (ip == FUNC0(bond->dev, 0, ip))
		return true;

	FUNC2();
	if (FUNC1(bond->dev, bond_upper_dev_walk, &ip))
		ret = true;
	FUNC3();

	return ret;
}