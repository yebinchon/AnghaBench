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
struct mtk_nor {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MTK_NOR_RADR0_REG ; 
 scalar_t__ MTK_NOR_RADR3_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_nor*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mtk_nor *mtk_nor, u32 addr)
{
	int i;

	FUNC0(mtk_nor);

	for (i = 0; i < 3; i++) {
		FUNC1(addr & 0xff, mtk_nor->base + MTK_NOR_RADR0_REG + i * 4);
		addr >>= 8;
	}
	/* Last register is non-contiguous */
	FUNC1(addr & 0xff, mtk_nor->base + MTK_NOR_RADR3_REG);
}