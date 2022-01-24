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
struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int /*<<< orphan*/ * msg; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_vport*) ; 

__attribute__((used)) static int FUNC2(struct hclge_vport *vport,
			      struct hclge_mbx_vf_to_pf_cmd *mbx_req,
			      bool gen_resp)
{
	bool alive = !!mbx_req->msg[2];
	int ret = 0;

	if (alive)
		ret = FUNC0(vport);
	else
		FUNC1(vport);

	return ret;
}