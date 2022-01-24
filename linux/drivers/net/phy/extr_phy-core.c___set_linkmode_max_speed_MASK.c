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
typedef  scalar_t__ u32 ;
struct phy_setting {scalar_t__ speed; int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int FUNC0 (struct phy_setting*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct phy_setting* settings ; 

__attribute__((used)) static int FUNC2(u32 max_speed, unsigned long *addr)
{
	const struct phy_setting *p;
	int i;

	for (i = 0, p = settings; i < FUNC0(settings); i++, p++) {
		if (p->speed > max_speed)
			FUNC1(p->bit, addr);
		else
			break;
	}

	return 0;
}