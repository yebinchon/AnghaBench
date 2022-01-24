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
typedef  int /*<<< orphan*/  u32 ;
struct smi_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_I2C_MSK_DAT_EN ; 
 int /*<<< orphan*/  SW_I2C_MSK_DAT_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct smi_dev *dev, int state, u32 sw_ctl)
{
	if (state) {
		/* set as input.*/
		FUNC0(sw_ctl, SW_I2C_MSK_DAT_EN);
	} else {
		FUNC0(sw_ctl, SW_I2C_MSK_DAT_OUT);
		/* set as output.*/
		FUNC1(sw_ctl, SW_I2C_MSK_DAT_EN);
	}
}