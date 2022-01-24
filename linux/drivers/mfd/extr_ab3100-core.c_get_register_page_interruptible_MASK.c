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
struct device {int /*<<< orphan*/  parent; } ;
struct ab3100 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ab3100*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ab3100* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, u8 bank,
	u8 first_reg, u8 *regvals, u8 numregs)
{
	struct ab3100 *ab3100 = FUNC1(dev->parent);

	return FUNC0(ab3100,
			first_reg, regvals, numregs);
}