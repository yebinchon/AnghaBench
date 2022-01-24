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
struct TYPE_2__ {int rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; } ;

/* Variables and functions */
 int FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int FUNC2 (struct bonding*) ; 

int FUNC3(struct bonding *bond, int rlb_enabled)
{
	int res;

	res = FUNC2(bond);
	if (res)
		return res;

	if (rlb_enabled) {
		bond->alb_info.rlb_enabled = 1;
		res = FUNC0(bond);
		if (res) {
			FUNC1(bond);
			return res;
		}
	} else {
		bond->alb_info.rlb_enabled = 0;
	}

	return 0;
}