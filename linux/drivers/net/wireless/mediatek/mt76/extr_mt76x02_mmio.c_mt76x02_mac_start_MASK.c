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
struct TYPE_2__ {int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int MT_INT_RX_DONE_ALL ; 
 int MT_INT_TX_DONE_ALL ; 
 int MT_INT_TX_STAT ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int) ; 

void FUNC3(struct mt76x02_dev *dev)
{
	FUNC1(dev);
	FUNC0(dev, MT_RX_FILTR_CFG, dev->mt76.rxfilter);
	FUNC0(dev, MT_MAC_SYS_CTRL,
		MT_MAC_SYS_CTRL_ENABLE_TX |
		MT_MAC_SYS_CTRL_ENABLE_RX);
	FUNC2(dev,
			   MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL |
			   MT_INT_TX_STAT);
}