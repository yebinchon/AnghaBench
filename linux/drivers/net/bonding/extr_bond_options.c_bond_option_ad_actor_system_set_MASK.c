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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ad_actor_system; } ;
struct bonding {int /*<<< orphan*/  dev; TYPE_1__ params; } ;
struct bond_opt_value {int /*<<< orphan*/  value; scalar_t__ string; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct bonding *bond,
					   const struct bond_opt_value *newval)
{
	u8 macaddr[ETH_ALEN];
	u8 *mac;

	if (newval->string) {
		if (!FUNC3(newval->string, macaddr))
			goto err;
		mac = macaddr;
	} else {
		mac = (u8 *)&newval->value;
	}

	if (!FUNC2(mac))
		goto err;

	FUNC4(bond->dev, "Setting ad_actor_system to %pM\n", mac);
	FUNC1(bond->params.ad_actor_system, mac);
	FUNC0(bond);

	return 0;

err:
	FUNC5(bond->dev, "Invalid ad_actor_system MAC address.\n");
	return -EINVAL;
}