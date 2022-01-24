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
struct as3722 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_ASIC_ID1_REG ; 
 int /*<<< orphan*/  AS3722_ASIC_ID2_REG ; 
 int AS3722_DEVICE_ID ; 
 int ENODEV ; 
 int FUNC0 (struct as3722*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct as3722 *as3722)
{
	u32 val;
	int ret;

	/* Check that this is actually a AS3722 */
	ret = FUNC0(as3722, AS3722_ASIC_ID1_REG, &val);
	if (ret < 0) {
		FUNC1(as3722->dev, "ASIC_ID1 read failed: %d\n", ret);
		return ret;
	}

	if (val != AS3722_DEVICE_ID) {
		FUNC1(as3722->dev, "Device is not AS3722, ID is 0x%x\n", val);
		return -ENODEV;
	}

	ret = FUNC0(as3722, AS3722_ASIC_ID2_REG, &val);
	if (ret < 0) {
		FUNC1(as3722->dev, "ASIC_ID2 read failed: %d\n", ret);
		return ret;
	}

	FUNC2(as3722->dev, "AS3722 with revision 0x%x found\n", val);
	return 0;
}