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
struct sunxi_rsb_device {int dummy; } ;
struct axp20x_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct axp20x_dev*) ; 
 struct axp20x_dev* FUNC1 (struct sunxi_rsb_device*) ; 

__attribute__((used)) static int FUNC2(struct sunxi_rsb_device *rdev)
{
	struct axp20x_dev *axp20x = FUNC1(rdev);

	return FUNC0(axp20x);
}