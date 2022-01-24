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
typedef  int /*<<< orphan*/  u8 ;
struct bonding {int /*<<< orphan*/  dev; } ;
struct bond_opt_value {char* string; scalar_t__ value; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct bonding*,scalar_t__) ; 
 int FUNC1 (struct bonding*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct bonding *bond,
					  const struct bond_opt_value *newval)
{
	int ret = -EPERM;
	__be32 target;

	if (newval->string) {
		if (!FUNC2(newval->string+1, -1, (u8 *)&target, -1, NULL)) {
			FUNC3(bond->dev, "invalid ARP target %pI4 specified\n",
				   &target);
			return ret;
		}
		if (newval->string[0] == '+')
			ret = FUNC0(bond, target);
		else if (newval->string[0] == '-')
			ret = FUNC1(bond, target);
		else
			FUNC3(bond->dev, "no command found in arp_ip_targets file - use +<addr> or -<addr>\n");
	} else {
		target = newval->value;
		ret = FUNC0(bond, target);
	}

	return ret;
}