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
struct slave {int dummy; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct slave* FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct slave *FUNC4(struct bonding *bond)
{
	struct slave *rx_slave;

	FUNC0();

	FUNC2();
	rx_slave = FUNC1(bond);
	FUNC3();

	return rx_slave;
}