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
typedef  int /*<<< orphan*/  u8 ;
struct mtk_nor {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_NOR_PIO_WR_CMD ; 
 scalar_t__ MTK_NOR_WDATA_REG ; 
 int FUNC0 (struct mtk_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_nor*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mtk_nor *mtk_nor,
				     int addr, int length, u8 *data)
{
	int i, ret;

	FUNC1(mtk_nor, addr);

	for (i = 0; i < length; i++) {
		FUNC2(*data++, mtk_nor->base + MTK_NOR_WDATA_REG);
		ret = FUNC0(mtk_nor, MTK_NOR_PIO_WR_CMD);
		if (ret < 0)
			return ret;
	}
	return 0;
}