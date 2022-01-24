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
typedef  int /*<<< orphan*/  uint32_t ;
struct vdec_vpu_inst {int /*<<< orphan*/  inst_addr; } ;
struct vdec_ap_ipi_dec_start {int /*<<< orphan*/ * data; int /*<<< orphan*/  vpu_inst_addr; int /*<<< orphan*/  msg_id; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AP_IPIMSG_DEC_START ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_ap_ipi_dec_start*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vpu_inst*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vpu_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct vdec_vpu_inst*,char*,unsigned int) ; 
 int FUNC5 (struct vdec_vpu_inst*,void*,int) ; 

int FUNC6(struct vdec_vpu_inst *vpu, uint32_t *data, unsigned int len)
{
	struct vdec_ap_ipi_dec_start msg;
	int i;
	int err = 0;

	FUNC3(vpu);

	if (len > FUNC0(msg.data)) {
		FUNC4(vpu, "invalid len = %d\n", len);
		return -EINVAL;
	}

	FUNC1(&msg, 0, sizeof(msg));
	msg.msg_id = AP_IPIMSG_DEC_START;
	msg.vpu_inst_addr = vpu->inst_addr;

	for (i = 0; i < len; i++)
		msg.data[i] = data[i];

	err = FUNC5(vpu, (void *)&msg, sizeof(msg));
	FUNC2(vpu, "- ret=%d", err);
	return err;
}