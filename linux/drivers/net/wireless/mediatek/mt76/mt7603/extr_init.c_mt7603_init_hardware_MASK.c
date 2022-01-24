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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct mt7603_dev {TYPE_1__ mt76; int /*<<< orphan*/  rxfilter; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT7603_WTBL_SIZE ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  MT_PSE_RTA ; 
 int MT_PSE_RTA_BUSY ; 
 int /*<<< orphan*/  MT_PSE_RTA_TAG_ID ; 
 int MT_PSE_RTA_WRITE ; 
 int /*<<< orphan*/  MT_WF_RFCR ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int FUNC1 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*) ; 
 int FUNC3 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*) ; 
 int FUNC6 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct mt7603_dev *dev)
{
	int i, ret;

	FUNC11(dev, MT_INT_SOURCE_CSR, ~0);

	ret = FUNC3(dev);
	if (ret < 0)
		return ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC11(dev, MT_WPDMA_GLO_CFG, 0x52000850);
	FUNC4(dev);
	dev->rxfilter = FUNC10(dev, MT_WF_RFCR);
	FUNC12(MT76_STATE_INITIALIZED, &dev->mt76.state);

	for (i = 0; i < MT7603_WTBL_SIZE; i++) {
		FUNC11(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY | MT_PSE_RTA_WRITE |
			FUNC0(MT_PSE_RTA_TAG_ID, i));
		FUNC9(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY, 0, 5000);
	}

	ret = FUNC6(dev);
	if (ret)
		return ret;

	FUNC2(dev);
	FUNC7(dev);
	FUNC8(dev);
	FUNC5(dev);

	return 0;
}