#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hnae3_ring_chain_node {struct hnae3_ring_chain_node* next; int /*<<< orphan*/  int_gl_idx; void* tqp_index; int /*<<< orphan*/  flag; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tqp; } ;
struct TYPE_4__ {TYPE_1__ kinfo; } ;
struct hclge_vport {TYPE_2__ nic; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCLGE_MBX_RING_MAP_BASIC_MSG_NUM ; 
 int HCLGE_MBX_RING_NODE_VARIABLE_NUM ; 
 int HCLGE_MBX_VF_MSG_DATA_NUM ; 
 int /*<<< orphan*/  HNAE3_RING_GL_IDX_M ; 
 int /*<<< orphan*/  HNAE3_RING_GL_IDX_S ; 
 int /*<<< orphan*/  HNAE3_RING_TYPE_B ; 
 int /*<<< orphan*/  FUNC0 (struct hnae3_ring_chain_node*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct hnae3_ring_chain_node* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
			struct hclge_mbx_vf_to_pf_cmd *req,
			struct hnae3_ring_chain_node *ring_chain,
			struct hclge_vport *vport)
{
	struct hnae3_ring_chain_node *cur_chain, *new_chain;
	int ring_num;
	int i;

	ring_num = req->msg[2];

	if (ring_num > ((HCLGE_MBX_VF_MSG_DATA_NUM -
		HCLGE_MBX_RING_MAP_BASIC_MSG_NUM) /
		HCLGE_MBX_RING_NODE_VARIABLE_NUM))
		return -ENOMEM;

	FUNC2(ring_chain->flag, HNAE3_RING_TYPE_B, req->msg[3]);
	ring_chain->tqp_index =
			FUNC1(vport->nic.kinfo.tqp[req->msg[4]]);
	FUNC3(ring_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
			HNAE3_RING_GL_IDX_S,
			req->msg[5]);

	cur_chain = ring_chain;

	for (i = 1; i < ring_num; i++) {
		new_chain = FUNC4(sizeof(*new_chain), GFP_KERNEL);
		if (!new_chain)
			goto err;

		FUNC2(new_chain->flag, HNAE3_RING_TYPE_B,
			      req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
			      HCLGE_MBX_RING_MAP_BASIC_MSG_NUM]);

		new_chain->tqp_index =
		FUNC1(vport->nic.kinfo.tqp
			[req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
			HCLGE_MBX_RING_MAP_BASIC_MSG_NUM + 1]]);

		FUNC3(new_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
				HNAE3_RING_GL_IDX_S,
				req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
				HCLGE_MBX_RING_MAP_BASIC_MSG_NUM + 2]);

		cur_chain->next = new_chain;
		cur_chain = new_chain;
	}

	return 0;
err:
	FUNC0(ring_chain);
	return -ENOMEM;
}