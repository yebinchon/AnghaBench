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
struct abx500_ops {int (* get_register_page ) (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct abx500_ops**) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct device *dev, u8 bank,
	u8 first_reg, u8 *regvals, u8 numregs)
{
	struct abx500_ops *ops;

	FUNC0(dev->parent, &ops);
	if (ops && ops->get_register_page)
		return ops->get_register_page(dev, bank,
			first_reg, regvals, numregs);
	else
		return -ENOTSUPP;
}