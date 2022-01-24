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
struct TYPE_2__ {int /*<<< orphan*/  peer_notif_delay; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bonding*,struct bond_opt_value const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct bonding *bond,
					    const struct bond_opt_value *newval)
{
	int ret = FUNC0(bond, newval,
					 "peer notification delay",
					 &bond->params.peer_notif_delay);
	return ret;
}