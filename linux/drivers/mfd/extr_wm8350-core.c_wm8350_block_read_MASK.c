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
typedef  int /*<<< orphan*/  u16 ;
struct wm8350 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct wm8350 *wm8350, int start_reg, int regs,
		      u16 *dest)
{
	int err = 0;

	err = FUNC1(wm8350->regmap, start_reg, dest, regs);
	if (err)
		FUNC0(wm8350->dev, "block read starting from R%d failed\n",
			start_reg);

	return err;
}