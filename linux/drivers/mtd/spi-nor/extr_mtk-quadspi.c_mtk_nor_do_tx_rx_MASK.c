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
typedef  int u8 ;
struct mtk_nor {scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MTK_NOR_CNT_REG ; 
 int MTK_NOR_MAX_RX_TX_SHIFT ; 
 int MTK_NOR_MAX_SHIFT ; 
 int /*<<< orphan*/  MTK_NOR_PRG_CMD ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mtk_nor*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mtk_nor *mtk_nor, u8 op,
			    u8 *tx, int txlen, u8 *rx, int rxlen)
{
	int len = 1 + txlen + rxlen;
	int i, ret, idx;

	if (len > MTK_NOR_MAX_SHIFT)
		return -EINVAL;

	FUNC4(len * 8, mtk_nor->base + MTK_NOR_CNT_REG);

	/* start at PRGDATA5, go down to PRGDATA0 */
	idx = MTK_NOR_MAX_RX_TX_SHIFT - 1;

	/* opcode */
	FUNC4(op, mtk_nor->base + FUNC0(idx));
	idx--;

	/* program TX data */
	for (i = 0; i < txlen; i++, idx--)
		FUNC4(tx[i], mtk_nor->base + FUNC0(idx));

	/* clear out rest of TX registers */
	while (idx >= 0) {
		FUNC4(0, mtk_nor->base + FUNC0(idx));
		idx--;
	}

	ret = FUNC2(mtk_nor, MTK_NOR_PRG_CMD);
	if (ret)
		return ret;

	/* restart at first RX byte */
	idx = rxlen - 1;

	/* read out RX data */
	for (i = 0; i < rxlen; i++, idx--)
		rx[i] = FUNC3(mtk_nor->base + FUNC1(idx));

	return 0;
}