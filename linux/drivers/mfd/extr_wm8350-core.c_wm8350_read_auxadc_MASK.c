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
typedef  int u16 ;
struct wm8350 {int /*<<< orphan*/  auxadc_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  auxadc_done; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ WM8350_AUX1_READBACK ; 
 int WM8350_AUXADC_AUX1 ; 
 int WM8350_AUXADC_DATA1_MASK ; 
 int WM8350_AUXADC_ENA ; 
 int WM8350_AUXADC_POLL ; 
 int WM8350_AUXADC_TEMP ; 
 int WM8350_AUXADC_USB ; 
 scalar_t__ WM8350_DIGITISER_CONTROL_1 ; 
 scalar_t__ WM8350_POWER_MGMT_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wm8350*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wm8350*,scalar_t__,int) ; 

int FUNC8(struct wm8350 *wm8350, int channel, int scale, int vref)
{
	u16 reg, result = 0;

	if (channel < WM8350_AUXADC_AUX1 || channel > WM8350_AUXADC_TEMP)
		return -EINVAL;
	if (channel >= WM8350_AUXADC_USB && channel <= WM8350_AUXADC_TEMP
	    && (scale != 0 || vref != 0))
		return -EINVAL;

	FUNC2(&wm8350->auxadc_mutex);

	/* Turn on the ADC */
	reg = FUNC6(wm8350, WM8350_POWER_MGMT_5);
	FUNC7(wm8350, WM8350_POWER_MGMT_5, reg | WM8350_AUXADC_ENA);

	if (scale || vref) {
		reg = scale << 13;
		reg |= vref << 12;
		FUNC7(wm8350, WM8350_AUX1_READBACK + channel, reg);
	}

	reg = FUNC6(wm8350, WM8350_DIGITISER_CONTROL_1);
	reg |= 1 << channel | WM8350_AUXADC_POLL;
	FUNC7(wm8350, WM8350_DIGITISER_CONTROL_1, reg);

	/* If a late IRQ left the completion signalled then consume
	 * the completion. */
	FUNC4(&wm8350->auxadc_done);

	/* We ignore the result of the completion and just check for a
	 * conversion result, allowing us to soldier on if the IRQ
	 * infrastructure is not set up for the chip. */
	FUNC5(&wm8350->auxadc_done, FUNC1(5));

	reg = FUNC6(wm8350, WM8350_DIGITISER_CONTROL_1);
	if (reg & WM8350_AUXADC_POLL)
		FUNC0(wm8350->dev, "adc chn %d read timeout\n", channel);
	else
		result = FUNC6(wm8350,
					 WM8350_AUX1_READBACK + channel);

	/* Turn off the ADC */
	reg = FUNC6(wm8350, WM8350_POWER_MGMT_5);
	FUNC7(wm8350, WM8350_POWER_MGMT_5,
			 reg & ~WM8350_AUXADC_ENA);

	FUNC3(&wm8350->auxadc_mutex);

	return result & WM8350_AUXADC_DATA1_MASK;
}