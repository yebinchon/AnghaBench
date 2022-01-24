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
struct phy_driver {int dummy; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_driver*,struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_driver*) ; 

int FUNC2(struct phy_driver *new_driver, int n,
			 struct module *owner)
{
	int i, ret = 0;

	for (i = 0; i < n; i++) {
		ret = FUNC0(new_driver + i, owner);
		if (ret) {
			while (i-- > 0)
				FUNC1(new_driver + i);
			break;
		}
	}
	return ret;
}