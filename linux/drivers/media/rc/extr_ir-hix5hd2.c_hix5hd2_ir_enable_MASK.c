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
struct hix5hd2_ir_priv {int /*<<< orphan*/  clock; scalar_t__ regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IR_CLK ; 
 int /*<<< orphan*/  IR_CLK_ENABLE ; 
 int /*<<< orphan*/  IR_CLK_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hix5hd2_ir_priv *dev, bool on)
{
	u32 val;
	int ret = 0;

	if (dev->regmap) {
		FUNC2(dev->regmap, IR_CLK, &val);
		if (on) {
			val &= ~IR_CLK_RESET;
			val |= IR_CLK_ENABLE;
		} else {
			val &= ~IR_CLK_ENABLE;
			val |= IR_CLK_RESET;
		}
		FUNC3(dev->regmap, IR_CLK, val);
	} else {
		if (on)
			ret = FUNC1(dev->clock);
		else
			FUNC0(dev->clock);
	}
	return ret;
}