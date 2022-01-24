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
struct share_obj {unsigned int len; int id; scalar_t__ share_buf; } ;
struct platform_device {int dummy; } ;
struct mtk_vpu {int* ipi_id_ack; int /*<<< orphan*/  vpu_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  ack_wq; struct share_obj* send_buf; } ;
typedef  enum ipi_id { ____Placeholder_ipi_id } ipi_id ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HOST_TO_VPU ; 
 int IPI_MAX ; 
 int /*<<< orphan*/  IPI_TIMEOUT_MS ; 
 int IPI_VPU_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mtk_vpu* FUNC5 (struct platform_device*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_vpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_vpu*) ; 
 int FUNC10 (struct mtk_vpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_vpu*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,unsigned long) ; 

int FUNC13(struct platform_device *pdev,
		 enum ipi_id id, void *buf,
		 unsigned int len)
{
	struct mtk_vpu *vpu = FUNC5(pdev);
	struct share_obj *send_obj = vpu->send_buf;
	unsigned long timeout;
	int ret = 0;

	if (id <= IPI_VPU_INIT || id >= IPI_MAX ||
	    len > sizeof(send_obj->share_buf) || !buf) {
		FUNC0(vpu->dev, "failed to send ipi message\n");
		return -EINVAL;
	}

	ret = FUNC10(vpu);
	if (ret) {
		FUNC0(vpu->dev, "failed to enable vpu clock\n");
		return ret;
	}
	if (!FUNC11(vpu)) {
		FUNC0(vpu->dev, "vpu_ipi_send: VPU is not running\n");
		ret = -EINVAL;
		goto clock_disable;
	}

	FUNC3(&vpu->vpu_mutex);

	 /* Wait until VPU receives the last command */
	timeout = jiffies + FUNC2(IPI_TIMEOUT_MS);
	do {
		if (FUNC6(jiffies, timeout)) {
			FUNC0(vpu->dev, "vpu_ipi_send: IPI timeout!\n");
			ret = -EIO;
			goto mut_unlock;
		}
	} while (FUNC7(vpu, HOST_TO_VPU));

	FUNC1((void *)send_obj->share_buf, buf, len);
	send_obj->len = len;
	send_obj->id = id;

	vpu->ipi_id_ack[id] = false;
	/* send the command to VPU */
	FUNC8(vpu, 0x1, HOST_TO_VPU);

	FUNC4(&vpu->vpu_mutex);

	/* wait for VPU's ACK */
	timeout = FUNC2(IPI_TIMEOUT_MS);
	ret = FUNC12(vpu->ack_wq, vpu->ipi_id_ack[id], timeout);
	vpu->ipi_id_ack[id] = false;
	if (ret == 0) {
		FUNC0(vpu->dev, "vpu ipi %d ack time out !", id);
		ret = -EIO;
		goto clock_disable;
	}
	FUNC9(vpu);

	return 0;

mut_unlock:
	FUNC4(&vpu->vpu_mutex);
clock_disable:
	FUNC9(vpu);

	return ret;
}