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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MT_CLIENT_BASE_PHYS_ADDR ; 
 scalar_t__ MT_CLIENT_STATUS ; 
 int MT_MCU_DEBUG_RESET ; 
 int MT_MCU_DEBUG_RESET_QUEUES ; 
 scalar_t__ FUNC0 (struct mt7603_dev*) ; 
 int FUNC1 (struct mt7603_dev*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct mt7603_dev*) ; 
 int FUNC3 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int,int) ; 

__attribute__((used)) static bool FUNC5(struct mt7603_dev *dev)
{
	u32 addr, val;

	if (FUNC3(dev, MT_MCU_DEBUG_RESET) & MT_MCU_DEBUG_RESET_QUEUES)
		return true;

	if (FUNC2(dev))
		return false;

	addr = FUNC1(dev, MT_CLIENT_BASE_PHYS_ADDR + MT_CLIENT_STATUS);
	FUNC4(dev, addr, 3);
	val = FUNC3(dev, addr) >> 16;

	if (FUNC0(dev) && (val & 0x4001) == 0x4001)
		return true;

	return (val & 0x8001) == 0x8001 || (val & 0xe001) == 0xe001;
}