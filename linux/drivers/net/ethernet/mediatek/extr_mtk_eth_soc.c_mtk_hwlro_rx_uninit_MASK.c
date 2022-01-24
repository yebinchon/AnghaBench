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
struct mtk_eth {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MTK_LRO_RING_RELINQUISH_DONE ; 
 int /*<<< orphan*/  MTK_LRO_RING_RELINQUISH_REQ ; 
 int MTK_MAX_RX_RING_NUM ; 
 int /*<<< orphan*/  MTK_PDMA_LRO_CTRL_DW0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_eth*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtk_eth *eth)
{
	int i;
	u32 val;

	/* relinquish lro rings, flush aggregated packets */
	FUNC3(eth, MTK_LRO_RING_RELINQUISH_REQ, MTK_PDMA_LRO_CTRL_DW0);

	/* wait for relinquishments done */
	for (i = 0; i < 10; i++) {
		val = FUNC2(eth, MTK_PDMA_LRO_CTRL_DW0);
		if (val & MTK_LRO_RING_RELINQUISH_DONE) {
			FUNC1(20);
			continue;
		}
		break;
	}

	/* invalidate lro rings */
	for (i = 1; i < MTK_MAX_RX_RING_NUM; i++)
		FUNC3(eth, 0, FUNC0(i));

	/* disable HW LRO */
	FUNC3(eth, 0, MTK_PDMA_LRO_CTRL_DW0);
}