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
struct intel_quark_mfd {struct clk* i2c_clk; int /*<<< orphan*/  i2c_clk_lookup; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTEL_QUARK_I2C_CLK_HZ ; 
 int /*<<< orphan*/  INTEL_QUARK_I2C_CONTROLLER_CLK ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct intel_quark_mfd* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct intel_quark_mfd *quark_mfd = FUNC6(dev);
	struct clk *i2c_clk;

	i2c_clk = FUNC2(dev,
					  INTEL_QUARK_I2C_CONTROLLER_CLK, NULL,
					  0, INTEL_QUARK_I2C_CLK_HZ);
	if (FUNC0(i2c_clk))
		return FUNC1(i2c_clk);

	quark_mfd->i2c_clk = i2c_clk;
	quark_mfd->i2c_clk_lookup = FUNC4(i2c_clk, NULL,
						INTEL_QUARK_I2C_CONTROLLER_CLK);

	if (!quark_mfd->i2c_clk_lookup) {
		FUNC3(quark_mfd->i2c_clk);
		FUNC5(dev, "Fixed clk register failed\n");
		return -ENOMEM;
	}

	return 0;
}