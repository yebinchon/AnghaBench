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
 scalar_t__ MTK_NOR_PP_DATA_REG ; 
 int /*<<< orphan*/  MTK_NOR_WR_CMD ; 
 int SFLASH_WRBUF_SIZE ; 
 int FUNC0 (struct mtk_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_nor*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mtk_nor *mtk_nor, int addr,
				const u8 *buf)
{
	int i, bufidx, data;

	FUNC1(mtk_nor, addr);

	bufidx = 0;
	for (i = 0; i < SFLASH_WRBUF_SIZE; i += 4) {
		data = buf[bufidx + 3]<<24 | buf[bufidx + 2]<<16 |
		       buf[bufidx + 1]<<8 | buf[bufidx];
		bufidx += 4;
		FUNC2(data, mtk_nor->base + MTK_NOR_PP_DATA_REG);
	}
	return FUNC0(mtk_nor, MTK_NOR_WR_CMD);
}