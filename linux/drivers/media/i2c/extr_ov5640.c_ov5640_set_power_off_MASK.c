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
struct ov5640_dev {int /*<<< orphan*/  xclk; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5640_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ov5640_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ov5640_dev *sensor)
{
	FUNC1(sensor, false);
	FUNC2(OV5640_NUM_SUPPLIES, sensor->supplies);
	FUNC0(sensor->xclk);
}