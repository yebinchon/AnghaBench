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
typedef  int u64 ;
typedef  size_t u32 ;
struct status_desc {int /*<<< orphan*/ * status_desc_data; } ;
struct qlcnic_host_sds_ring {size_t consumer; int /*<<< orphan*/  crb_sts_consumer; int /*<<< orphan*/  num_desc; struct status_desc* desc_head; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
#define  QLCNIC_RESPONSE_DESC 128 
 int STATUS_OWNER_HOST ; 
 int /*<<< orphan*/  STATUS_OWNER_PHANTOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t,struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ) ; 

void FUNC9(struct qlcnic_host_sds_ring *sds_ring)
{
	struct qlcnic_adapter *adapter = sds_ring->adapter;
	struct status_desc *desc;
	u64 sts_data0;
	int ring, opcode, desc_cnt;

	u32 consumer = sds_ring->consumer;

	desc = &sds_ring->desc_head[consumer];
	sts_data0 = FUNC2(desc->status_desc_data[0]);

	if (!(sts_data0 & STATUS_OWNER_HOST))
		return;

	desc_cnt = FUNC3(sts_data0);
	opcode = FUNC4(sts_data0);
	switch (opcode) {
	case QLCNIC_RESPONSE_DESC:
		FUNC6(desc_cnt, consumer, sds_ring);
		break;
	default:
		ring = FUNC5(sts_data0);
		FUNC7(adapter, ring, sts_data0);
		break;
	}

	for (; desc_cnt > 0; desc_cnt--) {
		desc = &sds_ring->desc_head[consumer];
		desc->status_desc_data[0] = FUNC0(STATUS_OWNER_PHANTOM);
		consumer = FUNC1(consumer, sds_ring->num_desc);
	}

	sds_ring->consumer = consumer;
	FUNC8(consumer, sds_ring->crb_sts_consumer);
}