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
struct regulator {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 

__attribute__((used)) static int FUNC3(struct regulator *reg, int enable)
{
	if (FUNC0(reg))
		return 0;

	if (enable)
		return FUNC2(reg);
	else
		return FUNC1(reg);
}