#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/ * __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_3__* dev; } ;
struct TYPE_8__ {int fail_over_mac; } ;
struct bonding {TYPE_1__ params; TYPE_2__* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
#define  BOND_FOM_ACTIVE 129 
#define  BOND_FOM_FOLLOW 128 
 int MAX_ADDR_LEN ; 
 struct slave* FUNC0 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct bonding *bond,
				  struct slave *new_active,
				  struct slave *old_active)
{
	u8 tmp_mac[MAX_ADDR_LEN];
	struct sockaddr_storage ss;
	int rv;

	switch (bond->params.fail_over_mac) {
	case BOND_FOM_ACTIVE:
		if (new_active) {
			rv = FUNC2(bond->dev, new_active->dev);
			if (rv)
				FUNC5(bond->dev, new_active->dev, "Error %d setting bond MAC from slave\n",
					  -rv);
		}
		break;
	case BOND_FOM_FOLLOW:
		/* if new_active && old_active, swap them
		 * if just old_active, do nothing (going to no active slave)
		 * if just new_active, set new_active to bond's MAC
		 */
		if (!new_active)
			return;

		if (!old_active)
			old_active = FUNC0(bond, new_active);

		if (old_active) {
			FUNC1(tmp_mac, new_active->dev->dev_addr,
					  new_active->dev->addr_len);
			FUNC1(ss.__data,
					  old_active->dev->dev_addr,
					  old_active->dev->addr_len);
			ss.ss_family = new_active->dev->type;
		} else {
			FUNC1(ss.__data, bond->dev->dev_addr,
					  bond->dev->addr_len);
			ss.ss_family = bond->dev->type;
		}

		rv = FUNC3(new_active->dev,
					 (struct sockaddr *)&ss, NULL);
		if (rv) {
			FUNC5(bond->dev, new_active->dev, "Error %d setting MAC of new active slave\n",
				  -rv);
			goto out;
		}

		if (!old_active)
			goto out;

		FUNC1(ss.__data, tmp_mac,
				  new_active->dev->addr_len);
		ss.ss_family = old_active->dev->type;

		rv = FUNC3(old_active->dev,
					 (struct sockaddr *)&ss, NULL);
		if (rv)
			FUNC5(bond->dev, old_active->dev, "Error %d setting MAC of old active slave\n",
				  -rv);
out:
		break;
	default:
		FUNC4(bond->dev, "bond_do_fail_over_mac impossible: bad policy %d\n",
			   bond->params.fail_over_mac);
		break;
	}

}