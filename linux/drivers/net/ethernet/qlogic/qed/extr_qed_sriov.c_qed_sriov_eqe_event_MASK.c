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
struct TYPE_2__ {int /*<<< orphan*/  msg_addr; } ;
union event_ring_data {int /*<<< orphan*/  malicious_vf; TYPE_1__ vf_pf_channel; } ;
typedef  int u8 ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  COMMON_EVENT_MALICIOUS_VF 129 
#define  COMMON_EVENT_VF_PF_CHANNEL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *p_hwfn,
			       u8 opcode,
			       __le16 echo,
			       union event_ring_data *data, u8 fw_return_code)
{
	switch (opcode) {
	case COMMON_EVENT_VF_PF_CHANNEL:
		return FUNC3(p_hwfn, FUNC1(echo),
					  &data->vf_pf_channel.msg_addr);
	case COMMON_EVENT_MALICIOUS_VF:
		FUNC2(p_hwfn, &data->malicious_vf);
		return 0;
	default:
		FUNC0(p_hwfn->cdev, "Unknown sriov eqe event 0x%02x\n",
			opcode);
		return -EINVAL;
	}
}