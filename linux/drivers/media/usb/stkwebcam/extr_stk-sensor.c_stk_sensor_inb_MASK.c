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
typedef  scalar_t__ u8 ;
struct stk_camera {int dummy; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  STK_IIC_OP ; 
 scalar_t__ STK_IIC_OP_RX ; 
 int /*<<< orphan*/  STK_IIC_RX_INDEX ; 
 int /*<<< orphan*/  STK_IIC_RX_VALUE ; 
 int /*<<< orphan*/  STK_IIC_STAT ; 
 scalar_t__ STK_IIC_STAT_RX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct stk_camera*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct stk_camera*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct stk_camera *dev, u8 reg, u8 *val)
{
	int i = 0;
	u8 tmpval = 0;

	if (FUNC2(dev, STK_IIC_RX_INDEX, reg))
		return 1;
	if (FUNC2(dev, STK_IIC_OP, STK_IIC_OP_RX))
		return 1;
	do {
		if (FUNC1(dev, STK_IIC_STAT, &tmpval))
			return 1;
		i++;
	} while (tmpval == 0 && i < MAX_RETRIES);
	if (tmpval != STK_IIC_STAT_RX_OK) {
		if (tmpval)
			FUNC0("stk_sensor_inb failed, status=0x%02x\n",
			       tmpval);
		return 1;
	}

	if (FUNC1(dev, STK_IIC_RX_VALUE, &tmpval))
		return 1;

	*val = tmpval;
	return 0;
}