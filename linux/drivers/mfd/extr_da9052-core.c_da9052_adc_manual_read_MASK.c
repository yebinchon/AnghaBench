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
struct da9052 {int /*<<< orphan*/  auxadc_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 unsigned char DA9052_ADC_MAN_MAN_CONV ; 
 int /*<<< orphan*/  DA9052_ADC_MAN_REG ; 
 int /*<<< orphan*/  DA9052_ADC_RES_H_REG ; 
 int DA9052_ADC_RES_LSB ; 
 int /*<<< orphan*/  DA9052_ADC_RES_L_REG ; 
 unsigned char DA9052_ADC_VBBAT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 unsigned char* chan_mux ; 
 int FUNC0 (struct da9052*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct da9052*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(struct da9052 *da9052, unsigned char channel)
{
	int ret;
	unsigned short calc_data;
	unsigned short data;
	unsigned char mux_sel;

	if (channel > DA9052_ADC_VBBAT)
		return -EINVAL;

	FUNC4(&da9052->auxadc_lock);

	FUNC6(&da9052->done);

	/* Channel gets activated on enabling the Conversion bit */
	mux_sel = chan_mux[channel] | DA9052_ADC_MAN_MAN_CONV;

	ret = FUNC1(da9052, DA9052_ADC_MAN_REG, mux_sel);
	if (ret < 0)
		goto err;

	/* Wait for an interrupt */
	if (!FUNC7(&da9052->done,
					 FUNC3(500))) {
		FUNC2(da9052->dev,
			"timeout waiting for ADC conversion interrupt\n");
		ret = -ETIMEDOUT;
		goto err;
	}

	ret = FUNC0(da9052, DA9052_ADC_RES_H_REG);
	if (ret < 0)
		goto err;

	calc_data = (unsigned short)ret;
	data = calc_data << 2;

	ret = FUNC0(da9052, DA9052_ADC_RES_L_REG);
	if (ret < 0)
		goto err;

	calc_data = (unsigned short)(ret & DA9052_ADC_RES_LSB);
	data |= calc_data;

	ret = data;

err:
	FUNC5(&da9052->auxadc_lock);
	return ret;
}