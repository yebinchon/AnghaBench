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
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_BIG_ENDIAN ; 
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_HDR_SEG_LEN ; 
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mt76x02_dev *dev)
{
	u32 val = FUNC0(dev, MT_WPDMA_GLO_CFG);

	val &= MT_WPDMA_GLO_CFG_DMA_BURST_SIZE |
	       MT_WPDMA_GLO_CFG_BIG_ENDIAN |
	       MT_WPDMA_GLO_CFG_HDR_SEG_LEN;
	val |= MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE;
	FUNC1(dev, MT_WPDMA_GLO_CFG, val);
}