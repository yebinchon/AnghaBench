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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  void* u16 ;
struct vnic_dev {int /*<<< orphan*/  pdev; } ;
struct filter_tlv {int length; int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {void* rq_idx; } ;
struct filter_action {TYPE_1__ u; int /*<<< orphan*/  type; } ;
struct filter {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 scalar_t__ CLSF_ADD ; 
 scalar_t__ CLSF_DEL ; 
 int /*<<< orphan*/  CLSF_TLV_ACTION ; 
 int /*<<< orphan*/  CLSF_TLV_FILTER ; 
 int /*<<< orphan*/  CMD_ADD_FILTER ; 
 int /*<<< orphan*/  CMD_DEL_FILTER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILTER_ACTION_RQ_STEERING ; 
 int /*<<< orphan*/  FUNC0 (struct filter_tlv*,int /*<<< orphan*/ ,int) ; 
 struct filter_tlv* FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct filter_tlv*,int) ; 
 int FUNC3 (struct vnic_dev*,int /*<<< orphan*/ ,int*,int*,int) ; 

int FUNC4(struct vnic_dev *vdev, u8 cmd, u16 *entry,
			struct filter *data)
{
	u64 a0, a1;
	int wait = 1000;
	dma_addr_t tlv_pa;
	int ret = -EINVAL;
	struct filter_tlv *tlv, *tlv_va;
	struct filter_action *action;
	u64 tlv_size;

	if (cmd == CLSF_ADD) {
		tlv_size = sizeof(struct filter) +
			   sizeof(struct filter_action) +
			   2 * sizeof(struct filter_tlv);
		tlv_va = FUNC1(vdev->pdev, tlv_size, &tlv_pa);
		if (!tlv_va)
			return -ENOMEM;
		tlv = tlv_va;
		a0 = tlv_pa;
		a1 = tlv_size;
		FUNC0(tlv, 0, tlv_size);
		tlv->type = CLSF_TLV_FILTER;
		tlv->length = sizeof(struct filter);
		*(struct filter *)&tlv->val = *data;

		tlv = (struct filter_tlv *)((char *)tlv +
					    sizeof(struct filter_tlv) +
					    sizeof(struct filter));

		tlv->type = CLSF_TLV_ACTION;
		tlv->length = sizeof(struct filter_action);
		action = (struct filter_action *)&tlv->val;
		action->type = FILTER_ACTION_RQ_STEERING;
		action->u.rq_idx = *entry;

		ret = FUNC3(vdev, CMD_ADD_FILTER, &a0, &a1, wait);
		*entry = (u16)a0;
		FUNC2(vdev->pdev, tlv_size, tlv_va, tlv_pa);
	} else if (cmd == CLSF_DEL) {
		a0 = *entry;
		ret = FUNC3(vdev, CMD_DEL_FILTER, &a0, &a1, wait);
	}

	return ret;
}