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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int FUNC1 (struct mt7603_dev*,int) ; 
 int FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct mt7603_dev *dev)
{
	u32 val;

	if (!(FUNC2(dev, MT_WPDMA_GLO_CFG) & MT_WPDMA_GLO_CFG_TX_DMA_BUSY))
		return false;

	val = FUNC1(dev, 9);
	return (val & FUNC0(8)) && (val & 0xf) != 0xf;
}