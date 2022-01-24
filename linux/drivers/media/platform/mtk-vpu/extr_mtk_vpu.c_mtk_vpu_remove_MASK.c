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
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ wq; } ;
struct mtk_vpu {int /*<<< orphan*/  clk; int /*<<< orphan*/  vpu_mutex; TYPE_1__ wdt; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FW ; 
 int /*<<< orphan*/  P_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mtk_vpu* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  vpu_debugfs ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mtk_vpu *vpu = FUNC5(pdev);

#ifdef CONFIG_DEBUG_FS
	debugfs_remove(vpu_debugfs);
#endif
	if (vpu->wdt.wq) {
		FUNC3(vpu->wdt.wq);
		FUNC2(vpu->wdt.wq);
	}
	FUNC6(vpu, P_FW);
	FUNC6(vpu, D_FW);
	FUNC4(&vpu->vpu_mutex);
	FUNC0(vpu->clk);

	return 0;
}