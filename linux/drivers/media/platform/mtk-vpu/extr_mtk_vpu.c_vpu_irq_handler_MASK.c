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
struct TYPE_2__ {int /*<<< orphan*/  ws; int /*<<< orphan*/  wq; } ;
struct mtk_vpu {int /*<<< orphan*/  clk; TYPE_1__ wdt; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int VPU_IPC_INT ; 
 int /*<<< orphan*/  VPU_TO_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_vpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_vpu*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *priv)
{
	struct mtk_vpu *vpu = priv;
	u32 vpu_to_host;
	int ret;

	/*
	 * Clock should have been enabled already.
	 * Enable again in case vpu_ipi_send times out
	 * and has disabled the clock.
	 */
	ret = FUNC1(vpu->clk);
	if (ret) {
		FUNC2(vpu->dev, "[VPU] enable clock failed %d\n", ret);
		return IRQ_NONE;
	}
	vpu_to_host = FUNC4(vpu, VPU_TO_HOST);
	if (vpu_to_host & VPU_IPC_INT) {
		FUNC6(vpu);
	} else {
		FUNC2(vpu->dev, "vpu watchdog timeout! 0x%x", vpu_to_host);
		FUNC3(vpu->wdt.wq, &vpu->wdt.ws);
	}

	/* VPU won't send another interrupt until we set VPU_TO_HOST to 0. */
	FUNC5(vpu, 0x0, VPU_TO_HOST);
	FUNC0(vpu->clk);

	return IRQ_HANDLED;
}