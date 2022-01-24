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
struct solo_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_I2C_TW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct solo_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct solo_dev *solo_dev, int chip_id, u8 tw6x_off,
		      u8 tw_off)
{
	if (FUNC1(solo_dev, chip_id))
		return FUNC2(solo_dev, SOLO_I2C_TW,
					 FUNC0(chip_id),
					 tw6x_off);
	else
		return FUNC2(solo_dev, SOLO_I2C_TW,
					 FUNC0(chip_id),
					 tw_off);
}