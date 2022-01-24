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
struct hnae3_ring_chain_node {int dummy; } ;
struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; } ;
typedef  int /*<<< orphan*/  ring_chain ;

/* Variables and functions */
 int FUNC0 (struct hclge_vport*,int,int,struct hnae3_ring_chain_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_ring_chain_node*) ; 
 int FUNC2 (struct hclge_mbx_vf_to_pf_cmd*,struct hnae3_ring_chain_node*,struct hclge_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae3_ring_chain_node*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_vport *vport, bool en,
					     struct hclge_mbx_vf_to_pf_cmd *req)
{
	struct hnae3_ring_chain_node ring_chain;
	int vector_id = req->msg[1];
	int ret;

	FUNC3(&ring_chain, 0, sizeof(ring_chain));
	ret = FUNC2(req, &ring_chain, vport);
	if (ret)
		return ret;

	ret = FUNC0(vport, vector_id, en, &ring_chain);

	FUNC1(&ring_chain);

	return ret;
}