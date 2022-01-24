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
struct ov2680_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OV2680_REG_FORMAT1 ; 
 int FUNC1 (struct ov2680_dev*) ; 
 int FUNC2 (struct ov2680_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ov2680_dev *sensor)
{
	int ret;

	ret = FUNC2(sensor, OV2680_REG_FORMAT1, FUNC0(2), FUNC0(0));
	if (ret < 0)
		return ret;

	return FUNC1(sensor);
}