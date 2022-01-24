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
struct mtk_nor {int /*<<< orphan*/  spi_clk; int /*<<< orphan*/  nor_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtk_nor *mtk_nor)
{
	int ret;

	ret = FUNC1(mtk_nor->spi_clk);
	if (ret)
		return ret;

	ret = FUNC1(mtk_nor->nor_clk);
	if (ret) {
		FUNC0(mtk_nor->spi_clk);
		return ret;
	}

	return 0;
}