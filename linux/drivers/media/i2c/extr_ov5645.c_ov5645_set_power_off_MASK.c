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
struct ov5645 {int /*<<< orphan*/  supplies; int /*<<< orphan*/  xclk; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  rst_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5645_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ov5645 *ov5645)
{
	FUNC1(ov5645->rst_gpio, 1);
	FUNC1(ov5645->enable_gpio, 0);
	FUNC0(ov5645->xclk);
	FUNC2(OV5645_NUM_SUPPLIES, ov5645->supplies);
}