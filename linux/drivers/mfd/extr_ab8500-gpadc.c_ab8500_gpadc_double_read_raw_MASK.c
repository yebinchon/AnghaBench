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
typedef  scalar_t__ u8 ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; int /*<<< orphan*/  dev; int /*<<< orphan*/  ab8500_gpadc_lock; int /*<<< orphan*/  ab8500_gpadc_complete; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_GPADC ; 
 scalar_t__ AB8500_GPADC_AUTODATAH_REG ; 
 scalar_t__ AB8500_GPADC_AUTODATAL_REG ; 
 int /*<<< orphan*/  AB8500_GPADC_AUTO_TIMER_REG ; 
 int /*<<< orphan*/  AB8500_GPADC_CTRL1_REG ; 
 int /*<<< orphan*/  AB8500_GPADC_CTRL2_REG ; 
 int /*<<< orphan*/  AB8500_GPADC_CTRL3_REG ; 
 scalar_t__ AB8500_GPADC_MANDATAH_REG ; 
 scalar_t__ AB8500_GPADC_MANDATAL_REG ; 
 scalar_t__ AB8500_GPADC_STAT_REG ; 
 scalar_t__ AB8540_GPADC_MANDATA2H_REG ; 
 scalar_t__ AB8540_GPADC_MANDATA2L_REG ; 
 scalar_t__ ADC_HW ; 
 scalar_t__ ADC_SW ; 
 int /*<<< orphan*/  ADC_SW_CONV ; 
 scalar_t__ AVG_1 ; 
 scalar_t__ AVG_16 ; 
 scalar_t__ AVG_4 ; 
 scalar_t__ AVG_8 ; 
 scalar_t__ BAT_CTRL_AND_IBAT ; 
 scalar_t__ BAT_TEMP_AND_IBAT ; 
#define  BTEMP_BALL 133 
 scalar_t__ BTEMP_PULL_UP ; 
 int /*<<< orphan*/  CONVERSION_TIME ; 
 scalar_t__ DIS_GPADC ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 scalar_t__ EN_BUF ; 
 scalar_t__ EN_FALLING ; 
 scalar_t__ EN_GPADC ; 
 scalar_t__ EN_ICHAR ; 
 scalar_t__ EN_TRIG_EDGE ; 
 scalar_t__ GPADC_BUSY ; 
 int HZ ; 
#define  MAIN_CHARGER_C 132 
#define  SAMPLE_1 131 
#define  SAMPLE_4 130 
#define  SAMPLE_8 129 
#define  USB_CHARGER_C 128 
 scalar_t__ VBAT_MEAS_AND_IBAT ; 
 scalar_t__ VBAT_TRUE_MEAS_AND_IBAT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC16(struct ab8500_gpadc *gpadc, u8 channel,
		u8 avg_sample, u8 trig_edge, u8 trig_timer, u8 conv_type,
		int *ibat)
{
	int ret;
	int looplimit = 0;
	unsigned long completion_timeout;
	u8 val, low_data, high_data, low_data2, high_data2;
	u8 val_reg1 = 0;
	unsigned int delay_min = 0;
	unsigned int delay_max = 0;
	u8 data_low_addr, data_high_addr;

	if (!gpadc)
		return -ENODEV;

	/* check if convertion is supported */
	if ((gpadc->irq_sw < 0) && (conv_type == ADC_SW))
		return -ENOTSUPP;
	if ((gpadc->irq_hw < 0) && (conv_type == ADC_HW))
		return -ENOTSUPP;

	FUNC8(&gpadc->ab8500_gpadc_lock);
	/* Enable VTVout LDO this is required for GPADC */
	FUNC10(gpadc->dev);

	/* Check if ADC is not busy, lock and proceed */
	do {
		ret = FUNC0(gpadc->dev,
			AB8500_GPADC, AB8500_GPADC_STAT_REG, &val);
		if (ret < 0)
			goto out;
		if (!(val & GPADC_BUSY))
			break;
		FUNC7(20);
	} while (++looplimit < 10);
	if (looplimit >= 10 && (val & GPADC_BUSY)) {
		FUNC3(gpadc->dev, "gpadc_conversion: GPADC busy");
		ret = -EINVAL;
		goto out;
	}

	/* Enable GPADC */
	val_reg1 |= EN_GPADC;

	/* Select the channel source and set average samples */
	switch (avg_sample) {
	case SAMPLE_1:
		val = channel | AVG_1;
		break;
	case SAMPLE_4:
		val = channel | AVG_4;
		break;
	case SAMPLE_8:
		val = channel | AVG_8;
		break;
	default:
		val = channel | AVG_16;
		break;
	}

	if (conv_type == ADC_HW) {
		ret = FUNC2(gpadc->dev,
				AB8500_GPADC, AB8500_GPADC_CTRL3_REG, val);
		val_reg1 |= EN_TRIG_EDGE;
		if (trig_edge)
			val_reg1 |= EN_FALLING;
	} else
		ret = FUNC2(gpadc->dev,
				AB8500_GPADC, AB8500_GPADC_CTRL2_REG, val);
	if (ret < 0) {
		FUNC3(gpadc->dev,
			"gpadc_conversion: set avg samples failed\n");
		goto out;
	}

	/*
	 * Enable ADC, buffering, select rising edge and enable ADC path
	 * charging current sense if it needed, ABB 3.0 needs some special
	 * treatment too.
	 */
	switch (channel) {
	case MAIN_CHARGER_C:
	case USB_CHARGER_C:
		val_reg1 |= EN_BUF | EN_ICHAR;
		break;
	case BTEMP_BALL:
		if (!FUNC5(gpadc->parent)) {
			val_reg1 |= EN_BUF | BTEMP_PULL_UP;
			/*
			* Delay might be needed for ABB8500 cut 3.0, if not,
			* remove when hardware will be availible
			*/
			delay_min = 1000; /* Delay in micro seconds */
			delay_max = 10000; /* large range optimises sleepmode */
			break;
		}
		/* Intentional fallthrough */
	default:
		val_reg1 |= EN_BUF;
		break;
	}

	/* Write configuration to register */
	ret = FUNC2(gpadc->dev,
		AB8500_GPADC, AB8500_GPADC_CTRL1_REG, val_reg1);
	if (ret < 0) {
		FUNC3(gpadc->dev,
			"gpadc_conversion: set Control register failed\n");
		goto out;
	}

	if (delay_min != 0)
		FUNC14(delay_min, delay_max);

	if (conv_type == ADC_HW) {
		/* Set trigger delay timer */
		ret = FUNC2(gpadc->dev,
			AB8500_GPADC, AB8500_GPADC_AUTO_TIMER_REG, trig_timer);
		if (ret < 0) {
			FUNC3(gpadc->dev,
				"gpadc_conversion: trig timer failed\n");
			goto out;
		}
		completion_timeout = 2 * HZ;
		data_low_addr = AB8500_GPADC_AUTODATAL_REG;
		data_high_addr = AB8500_GPADC_AUTODATAH_REG;
	} else {
		/* Start SW conversion */
		ret = FUNC1(gpadc->dev,
			AB8500_GPADC, AB8500_GPADC_CTRL1_REG,
			ADC_SW_CONV, ADC_SW_CONV);
		if (ret < 0) {
			FUNC3(gpadc->dev,
				"gpadc_conversion: start s/w conv failed\n");
			goto out;
		}
		completion_timeout = FUNC6(CONVERSION_TIME);
		data_low_addr = AB8500_GPADC_MANDATAL_REG;
		data_high_addr = AB8500_GPADC_MANDATAH_REG;
	}

	/* wait for completion of conversion */
	if (!FUNC15(&gpadc->ab8500_gpadc_complete,
			completion_timeout)) {
		FUNC3(gpadc->dev,
			"timeout didn't receive GPADC conv interrupt\n");
		ret = -EINVAL;
		goto out;
	}

	/* Read the converted RAW data */
	ret = FUNC0(gpadc->dev,
			AB8500_GPADC, data_low_addr, &low_data);
	if (ret < 0) {
		FUNC3(gpadc->dev, "gpadc_conversion: read low data failed\n");
		goto out;
	}

	ret = FUNC0(gpadc->dev,
		AB8500_GPADC, data_high_addr, &high_data);
	if (ret < 0) {
		FUNC3(gpadc->dev, "gpadc_conversion: read high data failed\n");
		goto out;
	}

	/* Check if double convertion is required */
	if ((channel == BAT_CTRL_AND_IBAT) ||
			(channel == VBAT_MEAS_AND_IBAT) ||
			(channel == VBAT_TRUE_MEAS_AND_IBAT) ||
			(channel == BAT_TEMP_AND_IBAT)) {

		if (conv_type == ADC_HW) {
			/* not supported */
			ret = -ENOTSUPP;
			FUNC3(gpadc->dev,
				"gpadc_conversion: only SW double conversion supported\n");
			goto out;
		} else {
			/* Read the converted RAW data 2 */
			ret = FUNC0(gpadc->dev,
				AB8500_GPADC, AB8540_GPADC_MANDATA2L_REG,
				&low_data2);
			if (ret < 0) {
				FUNC3(gpadc->dev,
					"gpadc_conversion: read sw low data 2 failed\n");
				goto out;
			}

			ret = FUNC0(gpadc->dev,
				AB8500_GPADC, AB8540_GPADC_MANDATA2H_REG,
				&high_data2);
			if (ret < 0) {
				FUNC3(gpadc->dev,
					"gpadc_conversion: read sw high data 2 failed\n");
				goto out;
			}
			if (ibat != NULL) {
				*ibat = (high_data2 << 8) | low_data2;
			} else {
				FUNC4(gpadc->dev,
					"gpadc_conversion: ibat not stored\n");
			}

		}
	}

	/* Disable GPADC */
	ret = FUNC2(gpadc->dev, AB8500_GPADC,
		AB8500_GPADC_CTRL1_REG, DIS_GPADC);
	if (ret < 0) {
		FUNC3(gpadc->dev, "gpadc_conversion: disable gpadc failed\n");
		goto out;
	}

	/* Disable VTVout LDO this is required for GPADC */
	FUNC11(gpadc->dev);
	FUNC13(gpadc->dev);

	FUNC9(&gpadc->ab8500_gpadc_lock);

	return (high_data << 8) | low_data;

out:
	/*
	 * It has shown to be needed to turn off the GPADC if an error occurs,
	 * otherwise we might have problem when waiting for the busy bit in the
	 * GPADC status register to go low. In V1.1 there wait_for_completion
	 * seems to timeout when waiting for an interrupt.. Not seen in V2.0
	 */
	(void) FUNC2(gpadc->dev, AB8500_GPADC,
		AB8500_GPADC_CTRL1_REG, DIS_GPADC);
	FUNC12(gpadc->dev);
	FUNC9(&gpadc->ab8500_gpadc_lock);
	FUNC3(gpadc->dev,
		"gpadc_conversion: Failed to AD convert channel %d\n", channel);
	return ret;
}