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
struct venc_vpu_inst {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; scalar_t__ failure; scalar_t__ signaled; int /*<<< orphan*/  wq_hd; } ;
struct venc_ap_ipi_msg_init {unsigned long venc_inst; int /*<<< orphan*/  msg_id; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  AP_IPIMSG_ENC_INIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct venc_ap_ipi_msg_init*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct venc_vpu_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_vpu_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct venc_vpu_inst*,char*,...) ; 
 int /*<<< orphan*/  vpu_enc_ipi_handler ; 
 scalar_t__ FUNC5 (struct venc_vpu_inst*,struct venc_ap_ipi_msg_init*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(struct venc_vpu_inst *vpu)
{
	int status;
	struct venc_ap_ipi_msg_init out;

	FUNC2(vpu);

	FUNC0(&vpu->wq_hd);
	vpu->signaled = 0;
	vpu->failure = 0;

	status = FUNC6(vpu->dev, vpu->id, vpu_enc_ipi_handler,
				  NULL, NULL);
	if (status) {
		FUNC4(vpu, "vpu_ipi_register fail %d", status);
		return -EINVAL;
	}

	FUNC1(&out, 0, sizeof(out));
	out.msg_id = AP_IPIMSG_ENC_INIT;
	out.venc_inst = (unsigned long)vpu;
	if (FUNC5(vpu, &out, sizeof(out))) {
		FUNC4(vpu, "AP_IPIMSG_ENC_INIT fail");
		return -EINVAL;
	}

	FUNC3(vpu);

	return 0;
}