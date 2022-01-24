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
struct mtk_vpu {int /*<<< orphan*/  vpu_mutex; int /*<<< orphan*/  wdt_refcnt; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPU_WDT_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_vpu*,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mtk_vpu *vpu)
{
	int ret;

	ret = FUNC0(vpu->clk);
	if (ret)
		return ret;
	/* Enable VPU watchdog */
	FUNC1(&vpu->vpu_mutex);
	if (!vpu->wdt_refcnt++)
		FUNC4(vpu,
			       FUNC3(vpu, VPU_WDT_REG) | (1L << 31),
			       VPU_WDT_REG);
	FUNC2(&vpu->vpu_mutex);

	return ret;
}