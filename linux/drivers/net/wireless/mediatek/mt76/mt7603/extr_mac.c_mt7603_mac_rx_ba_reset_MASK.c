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
typedef  int /*<<< orphan*/  u8 ;
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_BA_CONTROL_0 ; 
 int /*<<< orphan*/  MT_BA_CONTROL_1 ; 
 int MT_BA_CONTROL_1_RESET ; 
 int /*<<< orphan*/  MT_BA_CONTROL_1_TID ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct mt7603_dev *dev, void *addr, u8 tid)
{
	FUNC3(dev, MT_BA_CONTROL_0, FUNC2(addr));
	FUNC3(dev, MT_BA_CONTROL_1,
		(FUNC1(addr + 4) |
		 FUNC0(MT_BA_CONTROL_1_TID, tid) |
		 MT_BA_CONTROL_1_RESET));
}