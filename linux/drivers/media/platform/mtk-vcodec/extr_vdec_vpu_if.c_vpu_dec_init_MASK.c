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
struct vdec_vpu_inst {int /*<<< orphan*/  handler; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; int /*<<< orphan*/  wq; } ;
struct vdec_ap_ipi_init {unsigned long ap_inst_addr; int /*<<< orphan*/  msg_id; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AP_IPIMSG_DEC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_ap_ipi_init*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vpu_inst*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vpu_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct vdec_vpu_inst*,char*,int) ; 
 int FUNC5 (struct vdec_vpu_inst*,void*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC7(struct vdec_vpu_inst *vpu)
{
	struct vdec_ap_ipi_init msg;
	int err;

	FUNC3(vpu);

	FUNC0(&vpu->wq);

	err = FUNC6(vpu->dev, vpu->id, vpu->handler, "vdec", NULL);
	if (err != 0) {
		FUNC4(vpu, "vpu_ipi_register fail status=%d", err);
		return err;
	}

	FUNC1(&msg, 0, sizeof(msg));
	msg.msg_id = AP_IPIMSG_DEC_INIT;
	msg.ap_inst_addr = (unsigned long)vpu;

	FUNC2(vpu, "vdec_inst=%p", vpu);

	err = FUNC5(vpu, (void *)&msg, sizeof(msg));
	FUNC2(vpu, "- ret=%d", err);
	return err;
}