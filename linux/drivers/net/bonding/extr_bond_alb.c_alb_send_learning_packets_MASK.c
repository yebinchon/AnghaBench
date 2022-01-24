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
struct slave {int dummy; } ;
struct bonding {int /*<<< orphan*/  dev; } ;
struct alb_walk_data {int strict_match; struct bonding* bond; struct slave* slave; int /*<<< orphan*/ * mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slave*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alb_upper_dev_walk ; 
 struct bonding* FUNC1 (struct slave*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct alb_walk_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct slave *slave, u8 mac_addr[],
				      bool strict_match)
{
	struct bonding *bond = FUNC1(slave);
	struct alb_walk_data data = {
		.strict_match = strict_match,
		.mac_addr = mac_addr,
		.slave = slave,
		.bond = bond,
	};

	/* send untagged */
	FUNC0(slave, mac_addr, 0, 0);

	/* loop through all devices and see if we need to send a packet
	 * for that device.
	 */
	FUNC3();
	FUNC2(bond->dev, alb_upper_dev_walk, &data);
	FUNC4();
}