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
struct vpu_run {int signaled; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  wq; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_vpu {int fw_loaded; int /*<<< orphan*/  vpu_mutex; int /*<<< orphan*/  dev; struct vpu_run run; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FW ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  INIT_TIMEOUT_MS ; 
 int /*<<< orphan*/  P_FW ; 
 int /*<<< orphan*/  VPU_D_FW ; 
 int /*<<< orphan*/  VPU_P_FW ; 
 int /*<<< orphan*/  VPU_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mtk_vpu* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_vpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_vpu*) ; 
 int FUNC10 (struct mtk_vpu*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct platform_device *pdev)
{
	struct mtk_vpu *vpu;
	struct device *dev = &pdev->dev;
	struct vpu_run *run;
	int ret;

	if (!pdev) {
		FUNC1(dev, "VPU platform device is invalid\n");
		return -EINVAL;
	}

	vpu = FUNC7(pdev);
	run = &vpu->run;

	FUNC5(&vpu->vpu_mutex);
	if (vpu->fw_loaded) {
		FUNC6(&vpu->vpu_mutex);
		return 0;
	}
	FUNC6(&vpu->vpu_mutex);

	ret = FUNC10(vpu);
	if (ret) {
		FUNC1(dev, "enable clock failed %d\n", ret);
		return ret;
	}

	FUNC5(&vpu->vpu_mutex);

	run->signaled = false;
	FUNC0(vpu->dev, "firmware request\n");
	/* Downloading program firmware to device*/
	ret = FUNC3(vpu, P_FW);
	if (ret < 0) {
		FUNC1(dev, "Failed to request %s, %d\n", VPU_P_FW, ret);
		goto OUT_LOAD_FW;
	}

	/* Downloading data firmware to device */
	ret = FUNC3(vpu, D_FW);
	if (ret < 0) {
		FUNC1(dev, "Failed to request %s, %d\n", VPU_D_FW, ret);
		goto OUT_LOAD_FW;
	}

	vpu->fw_loaded = true;
	/* boot up vpu */
	FUNC8(vpu, 0x1, VPU_RESET);

	ret = FUNC11(run->wq,
					       run->signaled,
					       FUNC4(INIT_TIMEOUT_MS)
					       );
	if (ret == 0) {
		ret = -ETIME;
		FUNC1(dev, "wait vpu initialization timeout!\n");
		goto OUT_LOAD_FW;
	} else if (-ERESTARTSYS == ret) {
		FUNC1(dev, "wait vpu interrupted by a signal!\n");
		goto OUT_LOAD_FW;
	}

	ret = 0;
	FUNC2(dev, "vpu is ready. Fw version %s\n", run->fw_ver);

OUT_LOAD_FW:
	FUNC6(&vpu->vpu_mutex);
	FUNC9(vpu);

	return ret;
}