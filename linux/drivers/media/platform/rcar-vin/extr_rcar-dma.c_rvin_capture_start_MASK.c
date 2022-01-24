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
struct rvin_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HW_BUFFER_NUM ; 
 int /*<<< orphan*/  STARTING ; 
 int /*<<< orphan*/  VNFC_C_FRAME ; 
 int /*<<< orphan*/  VNFC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvin_dev*,int) ; 
 int FUNC2 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvin_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*,char*) ; 

__attribute__((used)) static int FUNC5(struct rvin_dev *vin)
{
	int slot, ret;

	for (slot = 0; slot < HW_BUFFER_NUM; slot++)
		FUNC1(vin, slot);

	FUNC0(vin);

	ret = FUNC2(vin);
	if (ret)
		return ret;

	FUNC4(vin, "Starting to capture\n");

	/* Continuous Frame Capture Mode */
	FUNC3(vin, VNFC_C_FRAME, VNFC_REG);

	vin->state = STARTING;

	return 0;
}