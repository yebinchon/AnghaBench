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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_DMA_FQCR0 ; 
 int MT_DMA_FQCR0_BUSY ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_DEST_PORT_ID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_DEST_QUEUE_ID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_TARGET_QID ; 
 int /*<<< orphan*/  MT_DMA_FQCR0_TARGET_WCID ; 
 int /*<<< orphan*/  MT_TX_ABORT ; 
 int MT_TX_ABORT_EN ; 
 int /*<<< orphan*/  MT_TX_ABORT_WCID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct mt7603_dev *dev, int idx, bool abort)
{
	int i, port, queue;

	if (abort) {
		port = 3; /* PSE */
		queue = 8; /* free queue */
	} else {
		port = 0; /* HIF */
		queue = 1; /* MCU queue */
	}

	FUNC2(dev, idx, true);

	FUNC4(dev, MT_TX_ABORT, MT_TX_ABORT_EN |
			FUNC0(MT_TX_ABORT_WCID, idx));

	for (i = 0; i < 4; i++) {
		FUNC4(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY |
			FUNC0(MT_DMA_FQCR0_TARGET_WCID, idx) |
			FUNC0(MT_DMA_FQCR0_TARGET_QID, i) |
			FUNC0(MT_DMA_FQCR0_DEST_PORT_ID, port) |
			FUNC0(MT_DMA_FQCR0_DEST_QUEUE_ID, queue));

		FUNC1(!FUNC3(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY,
					0, 5000));
	}

	FUNC4(dev, MT_TX_ABORT, 0);

	FUNC2(dev, idx, false);
}