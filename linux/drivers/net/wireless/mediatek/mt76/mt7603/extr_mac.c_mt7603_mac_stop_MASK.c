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
 int /*<<< orphan*/  MT_ARB_SCR ; 
 int MT_ARB_SCR_RX_DISABLE ; 
 int MT_ARB_SCR_TX_DISABLE ; 
 int /*<<< orphan*/  MT_WF_ARB_RQCR ; 
 int /*<<< orphan*/  MT_WF_ARB_RQCR_RX_START ; 
 int /*<<< orphan*/  MT_WF_ARB_TX_START_0 ; 
 int /*<<< orphan*/  FUNC0 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mt7603_dev *dev)
{
	FUNC1(dev, MT_ARB_SCR,
		 MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
	FUNC2(dev, MT_WF_ARB_TX_START_0, 0);
	FUNC0(dev, MT_WF_ARB_RQCR, MT_WF_ARB_RQCR_RX_START);
}