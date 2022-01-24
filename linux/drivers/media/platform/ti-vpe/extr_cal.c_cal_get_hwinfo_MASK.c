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
typedef  int /*<<< orphan*/  u32 ;
struct cal_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_HL_HWINFO ; 
 int /*<<< orphan*/  CAL_HL_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int,struct cal_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cal_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cal_dev *dev)
{
	u32 revision = 0;
	u32 hwinfo = 0;

	revision = FUNC1(dev, CAL_HL_REVISION);
	FUNC0(3, dev, "CAL_HL_REVISION = 0x%08x (expecting 0x40000200)\n",
		revision);

	hwinfo = FUNC1(dev, CAL_HL_HWINFO);
	FUNC0(3, dev, "CAL_HL_HWINFO = 0x%08x (expecting 0xA3C90469)\n",
		hwinfo);
}