#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct mt76x02_dev *dev)
{
	u32 val = FUNC2(dev, 0x10f4);

	if (!(val & FUNC0(29)) || !(val & (FUNC0(7) | FUNC0(5))))
		return;

	FUNC1(dev->mt76.dev, "mac specific condition occurred\n");

	FUNC3(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
	FUNC5(10);
	FUNC4(dev, MT_MAC_SYS_CTRL,
		MT_MAC_SYS_CTRL_ENABLE_TX | MT_MAC_SYS_CTRL_ENABLE_RX);
}