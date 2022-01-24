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
struct ov5640_dev {int upside_down; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OV5640_REG_TIMING_TC_REG20 ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor, int value)
{
	/* If sensor is mounted upside down, flip logic is inversed */

	/*
	 * TIMING TC REG20:
	 * - [2]:	ISP vflip
	 * - [1]:	Sensor vflip
	 */
	return FUNC1(sensor, OV5640_REG_TIMING_TC_REG20,
			      FUNC0(2) | FUNC0(1),
			      (value ^ sensor->upside_down) ?
			      (FUNC0(2) | FUNC0(1)) : 0);
}