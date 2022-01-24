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
 int FUNC0 (struct bonding*) ; 
#define  BOND_MODE_8023AD 131 
#define  BOND_MODE_ALB 130 
#define  BOND_MODE_TLB 129 
#define  BOND_MODE_XOR 128 
 int /*<<< orphan*/  FUNC1 (struct slave*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*,struct slave*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bonding *bond,
				    struct slave *slave,
				    char link)
{
	switch (FUNC0(bond)) {
	case BOND_MODE_8023AD:
		FUNC1(slave, link);
		break;
	case BOND_MODE_TLB:
	case BOND_MODE_ALB:
		FUNC2(bond, slave, link);
		break;
	case BOND_MODE_XOR:
		FUNC3(bond, NULL);
		break;
	}
}