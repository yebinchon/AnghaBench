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
struct tvp5150 {int /*<<< orphan*/  regmap; } ;
struct i2c_reg_value {int reg; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				const struct i2c_reg_value *regs)
{
	struct tvp5150 *decoder = FUNC1(sd);

	while (regs->reg != 0xff) {
		FUNC0(decoder->regmap, regs->reg, regs->value);
		regs++;
	}
	return 0;
}