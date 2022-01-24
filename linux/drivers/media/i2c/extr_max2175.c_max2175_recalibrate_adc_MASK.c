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
struct max2175 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct max2175*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,char*) ; 

__attribute__((used)) static int FUNC3(struct max2175 *ctx)
{
	int ret;

	/* ADC Re-calibration */
	FUNC1(ctx, 150, 0xff);
	FUNC1(ctx, 205, 0xff);
	FUNC1(ctx, 147, 0x20);
	FUNC1(ctx, 147, 0x00);
	FUNC1(ctx, 202, 0x20);
	FUNC1(ctx, 202, 0x00);

	ret = FUNC0(ctx, 69, 4, 3, 3, 50000);
	if (ret)
		FUNC2(ctx, "adc recalibration failed\n");

	return ret;
}