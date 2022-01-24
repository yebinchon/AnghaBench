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
struct stm32_cec {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk_hdmi_cec; int /*<<< orphan*/  clk_cec; int /*<<< orphan*/  dev; } ;
struct cec_adapter {struct stm32_cec* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CECEN ; 
 int /*<<< orphan*/  CEC_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cec_adapter *adap, bool enable)
{
	struct stm32_cec *cec = adap->priv;
	int ret = 0;

	if (enable) {
		ret = FUNC1(cec->clk_cec);
		if (ret)
			FUNC2(cec->dev, "fail to enable cec clock\n");

		FUNC1(cec->clk_hdmi_cec);
		FUNC3(cec->regmap, CEC_CR, CECEN, CECEN);
	} else {
		FUNC0(cec->clk_cec);
		FUNC0(cec->clk_hdmi_cec);
		FUNC3(cec->regmap, CEC_CR, CECEN, 0);
	}

	return ret;
}