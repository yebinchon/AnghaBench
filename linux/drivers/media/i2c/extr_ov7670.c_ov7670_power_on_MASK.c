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
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int on; scalar_t__ clk; scalar_t__ resetb_gpio; scalar_t__ pwdn_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct ov7670_info* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subdev *sd)
{
	struct ov7670_info *info = FUNC2(sd);

	if (info->on)
		return;

	FUNC0(info->clk);

	if (info->pwdn_gpio)
		FUNC1(info->pwdn_gpio, 0);
	if (info->resetb_gpio) {
		FUNC1(info->resetb_gpio, 1);
		FUNC3(500, 1000);
		FUNC1(info->resetb_gpio, 0);
	}
	if (info->pwdn_gpio || info->resetb_gpio || info->clk)
		FUNC3(3000, 5000);

	info->on = true;
}