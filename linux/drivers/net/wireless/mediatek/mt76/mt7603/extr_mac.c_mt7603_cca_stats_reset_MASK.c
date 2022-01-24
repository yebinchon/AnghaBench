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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_PHYCTRL_2_STATUS_EN ; 
 int /*<<< orphan*/  MT_PHYCTRL_2_STATUS_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mt7603_dev *dev)
{
	FUNC2(dev, FUNC0(2), MT_PHYCTRL_2_STATUS_RESET);
	FUNC1(dev, FUNC0(2), MT_PHYCTRL_2_STATUS_RESET);
	FUNC2(dev, FUNC0(2), MT_PHYCTRL_2_STATUS_EN);
}