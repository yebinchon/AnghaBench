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
typedef  int u8 ;
struct stmpe {int sample_time; int mod_12b; int ref_sel; int adc_freq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMPE811_REG_ADC_CTRL1 ; 
 int /*<<< orphan*/  STMPE811_REG_ADC_CTRL2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct stmpe*,int /*<<< orphan*/ ,int,int) ; 

int FUNC6(struct stmpe *stmpe)
{
	int ret;
	u8 adc_ctrl1, adc_ctrl1_mask;

	adc_ctrl1 = FUNC3(stmpe->sample_time) |
		    FUNC1(stmpe->mod_12b) |
		    FUNC2(stmpe->ref_sel);
	adc_ctrl1_mask = FUNC3(0xff) | FUNC1(0xff) |
			 FUNC2(0xff);

	ret = FUNC5(stmpe, STMPE811_REG_ADC_CTRL1,
			adc_ctrl1_mask, adc_ctrl1);
	if (ret) {
		FUNC4(stmpe->dev, "Could not setup ADC\n");
		return ret;
	}

	ret = FUNC5(stmpe, STMPE811_REG_ADC_CTRL2,
			FUNC0(0xff), FUNC0(stmpe->adc_freq));
	if (ret) {
		FUNC4(stmpe->dev, "Could not setup ADC\n");
		return ret;
	}

	return 0;
}