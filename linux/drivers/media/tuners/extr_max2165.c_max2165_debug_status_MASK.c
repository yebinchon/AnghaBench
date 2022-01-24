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
struct max2165_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_AUTOTUNE ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct max2165_priv*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct max2165_priv *priv)
{
	u8 status, autotune;
	u8 auto_vco_success, auto_vco_active;
	u8 pll_locked;
	u8 dc_offset_low, dc_offset_hi;
	u8 signal_lv_over_threshold;
	u8 vco, vco_sub_band, adc;

	FUNC1(priv, REG_STATUS, &status);
	FUNC1(priv, REG_AUTOTUNE, &autotune);

	auto_vco_success = (status >> 6) & 0x01;
	auto_vco_active = (status >> 5) & 0x01;
	pll_locked = (status >> 4) & 0x01;
	dc_offset_low = (status >> 3) & 0x01;
	dc_offset_hi = (status >> 2) & 0x01;
	signal_lv_over_threshold = status & 0x01;

	vco = autotune >> 6;
	vco_sub_band = (autotune >> 3) & 0x7;
	adc = autotune & 0x7;

	FUNC0("auto VCO active: %d, auto VCO success: %d\n",
		auto_vco_active, auto_vco_success);
	FUNC0("PLL locked: %d\n", pll_locked);
	FUNC0("DC offset low: %d, DC offset high: %d\n",
		dc_offset_low, dc_offset_hi);
	FUNC0("Signal lvl over threshold: %d\n", signal_lv_over_threshold);
	FUNC0("VCO: %d, VCO Sub-band: %d, ADC: %d\n", vco, vco_sub_band, adc);
}