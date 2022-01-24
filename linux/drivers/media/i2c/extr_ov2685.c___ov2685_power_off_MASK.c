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
typedef  int u32 ;
struct ov2685 {int /*<<< orphan*/  supplies; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  xvclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV2685_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct ov2685 *ov2685)
{
	/* 512 xvclk cycles after the last SCCB transaction or MIPI frame end */
	u32 delay_us = FUNC2(512);

	FUNC4(delay_us, delay_us * 2);
	FUNC0(ov2685->xvclk);
	FUNC1(ov2685->reset_gpio, 1);
	FUNC3(OV2685_NUM_SUPPLIES, ov2685->supplies);
}