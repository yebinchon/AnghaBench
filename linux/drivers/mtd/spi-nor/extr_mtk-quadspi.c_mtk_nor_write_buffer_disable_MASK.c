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
 scalar_t__ MTK_NOR_CFG2_REG ; 
 int MTK_NOR_WR_BUF_DISABLE ; 
 int FUNC0 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtk_nor *mtk_nor)
{
	u8 reg;

	FUNC1(MTK_NOR_WR_BUF_DISABLE, mtk_nor->base + MTK_NOR_CFG2_REG);
	return FUNC0(mtk_nor->base + MTK_NOR_CFG2_REG, reg,
				  MTK_NOR_WR_BUF_DISABLE == (reg & 0x1), 100,
				  10000);
}