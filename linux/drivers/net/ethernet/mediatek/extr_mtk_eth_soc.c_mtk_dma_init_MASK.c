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
struct mtk_eth {TYPE_1__* soc; scalar_t__ hwlro; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int EBUSY ; 
 int FC_THRES_DROP_EN ; 
 int FC_THRES_DROP_MODE ; 
 int FC_THRES_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MTK_MAX_RX_RING_NUM ; 
 int /*<<< orphan*/  MTK_QDMA ; 
 int /*<<< orphan*/  MTK_QDMA_FC_THRES ; 
 int /*<<< orphan*/  MTK_QDMA_HRED2 ; 
 int /*<<< orphan*/  MTK_RX_FLAGS_HWLRO ; 
 int /*<<< orphan*/  MTK_RX_FLAGS_NORMAL ; 
 int /*<<< orphan*/  MTK_RX_FLAGS_QDMA ; 
 scalar_t__ FUNC1 (struct mtk_eth*) ; 
 int FUNC2 (struct mtk_eth*) ; 
 int FUNC3 (struct mtk_eth*) ; 
 int FUNC4 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mtk_eth *eth)
{
	int err;
	u32 i;

	if (FUNC1(eth))
		return -EBUSY;

	if (FUNC0(eth->soc->caps, MTK_QDMA)) {
		/* QDMA needs scratch memory for internal reordering of the
		 * descriptors
		 */
		err = FUNC3(eth);
		if (err)
			return err;
	}

	err = FUNC5(eth);
	if (err)
		return err;

	if (FUNC0(eth->soc->caps, MTK_QDMA)) {
		err = FUNC4(eth, 0, MTK_RX_FLAGS_QDMA);
		if (err)
			return err;
	}

	err = FUNC4(eth, 0, MTK_RX_FLAGS_NORMAL);
	if (err)
		return err;

	if (eth->hwlro) {
		for (i = 1; i < MTK_MAX_RX_RING_NUM; i++) {
			err = FUNC4(eth, i, MTK_RX_FLAGS_HWLRO);
			if (err)
				return err;
		}
		err = FUNC2(eth);
		if (err)
			return err;
	}

	if (FUNC0(eth->soc->caps, MTK_QDMA)) {
		/* Enable random early drop and set drop threshold
		 * automatically
		 */
		FUNC6(eth, FC_THRES_DROP_MODE | FC_THRES_DROP_EN |
			FC_THRES_MIN, MTK_QDMA_FC_THRES);
		FUNC6(eth, 0x0, MTK_QDMA_HRED2);
	}

	return 0;
}