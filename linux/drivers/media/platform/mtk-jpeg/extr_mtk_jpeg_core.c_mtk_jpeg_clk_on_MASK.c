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
struct mtk_jpeg_dev {int /*<<< orphan*/  clk_jdec; int /*<<< orphan*/  clk_jdec_smi; int /*<<< orphan*/  dev; int /*<<< orphan*/  larb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtk_jpeg_dev *jpeg)
{
	int ret;

	ret = FUNC2(jpeg->larb);
	if (ret)
		FUNC1(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
	FUNC0(jpeg->clk_jdec_smi);
	FUNC0(jpeg->clk_jdec);
}