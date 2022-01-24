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
struct ov2680_dev {int is_enabled; int /*<<< orphan*/  supplies; int /*<<< orphan*/  xvclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV2680_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ov2680_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ov2680_dev *sensor)
{
	if (!sensor->is_enabled)
		return 0;

	FUNC0(sensor->xvclk);
	FUNC1(sensor);
	FUNC2(OV2680_NUM_SUPPLIES, sensor->supplies);
	sensor->is_enabled = false;

	return 0;
}