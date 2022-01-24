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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT_CCK_PROT_CFG ; 
 int /*<<< orphan*/  MT_OFDM_PROT_CFG ; 
 int MT_PROT_CFG_CTRL ; 
 int MT_PROT_CFG_RTS_THRESH ; 
 int /*<<< orphan*/  MT_TX_RTS_CFG ; 
 int /*<<< orphan*/  MT_TX_RTS_CFG_THRESH ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct mt76x02_dev *dev, u32 val)
{
	u32 data = 0;

	if (val != ~0)
		data = FUNC0(MT_PROT_CFG_CTRL, 1) |
		       MT_PROT_CFG_RTS_THRESH;

	FUNC2(dev, MT_TX_RTS_CFG, MT_TX_RTS_CFG_THRESH, val);

	FUNC1(dev, MT_CCK_PROT_CFG,
		 MT_PROT_CFG_CTRL | MT_PROT_CFG_RTS_THRESH, data);
	FUNC1(dev, MT_OFDM_PROT_CFG,
		 MT_PROT_CFG_CTRL | MT_PROT_CFG_RTS_THRESH, data);
}