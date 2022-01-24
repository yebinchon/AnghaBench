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
typedef  int /*<<< orphan*/  u8 ;
struct ab8500_gpadc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ab8500_gpadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

int FUNC3(struct ab8500_gpadc *gpadc, u8 channel,
		u8 avg_sample, u8 trig_edge, u8 trig_timer, u8 conv_type)
{
	int ad_value;
	int voltage;

	ad_value = FUNC1(gpadc, channel, avg_sample,
			trig_edge, trig_timer, conv_type);

	/* On failure retry a second time */
	if (ad_value < 0)
		ad_value = FUNC1(gpadc, channel, avg_sample,
			trig_edge, trig_timer, conv_type);
	if (ad_value < 0) {
		FUNC2(gpadc->dev, "GPADC raw value failed ch: %d\n",
				channel);
		return ad_value;
	}

	voltage = FUNC0(gpadc, channel, ad_value);
	if (voltage < 0)
		FUNC2(gpadc->dev,
			"GPADC to voltage conversion failed ch: %d AD: 0x%x\n",
			channel, ad_value);

	return voltage;
}