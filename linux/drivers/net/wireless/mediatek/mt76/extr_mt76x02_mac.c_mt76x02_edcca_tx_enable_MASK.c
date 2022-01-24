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
struct mt76x02_dev {int ed_tx_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_AUTO_RSP_CFG ; 
 int MT_AUTO_RSP_EN ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MT_TX_PIN_CFG ; 
 int MT_TX_PIN_CFG_RXANT ; 
 int MT_TX_PIN_CFG_TXANT ; 
 int MT_TX_PIN_RFTR_EN ; 
 int MT_TX_PIN_TRSW_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mt76x02_dev *dev, bool enable)
{
	if (enable) {
		u32 data;

		FUNC2(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
		FUNC2(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_EN);
		/* enable pa-lna */
		data = FUNC1(dev, MT_TX_PIN_CFG);
		data |= MT_TX_PIN_CFG_TXANT |
			MT_TX_PIN_CFG_RXANT |
			MT_TX_PIN_RFTR_EN |
			MT_TX_PIN_TRSW_EN;
		FUNC3(dev, MT_TX_PIN_CFG, data);
	} else {
		FUNC0(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
		FUNC0(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_EN);
		/* disable pa-lna */
		FUNC0(dev, MT_TX_PIN_CFG, MT_TX_PIN_CFG_TXANT);
		FUNC0(dev, MT_TX_PIN_CFG, MT_TX_PIN_CFG_RXANT);
	}
	dev->ed_tx_blocked = !enable;
}