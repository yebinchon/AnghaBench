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
struct phylink {scalar_t__ phydev; } ;
struct ethtool_eee {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOPNOTSUPP ; 
 int FUNC1 (scalar_t__,struct ethtool_eee*) ; 

int FUNC2(struct phylink *pl, struct ethtool_eee *eee)
{
	int ret = -EOPNOTSUPP;

	FUNC0();

	if (pl->phydev)
		ret = FUNC1(pl->phydev, eee);

	return ret;
}