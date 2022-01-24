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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 

int FUNC2(struct phylink *pl)
{
	int ret = 0;

	FUNC0();

	if (pl->phydev)
		ret = FUNC1(pl->phydev);

	return ret;
}