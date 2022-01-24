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
struct mt7615_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  MT_WF_PHY_R0_B0_PHYMUX_5 ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct mt7615_dev *dev)
{
	FUNC2(dev, MT_WF_PHY_R0_B0_PHYMUX_5, FUNC1(22, 20));
	FUNC3(dev, MT_WF_PHY_R0_B0_PHYMUX_5, FUNC0(22) | FUNC0(20));
}