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
typedef  size_t u16 ;
struct hwrm_vnic_rss_cos_lb_ctx_alloc_output {int /*<<< orphan*/  rss_cos_lb_ctx_id; } ;
struct hwrm_vnic_rss_cos_lb_ctx_alloc_input {int /*<<< orphan*/  member_0; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; TYPE_1__* vnic_info; struct hwrm_vnic_rss_cos_lb_ctx_alloc_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/ * fw_rss_cos_lb_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_VNIC_RSS_COS_LB_CTX_ALLOC ; 
 int FUNC0 (struct bnxt*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp, u16 vnic_id, u16 ctx_idx)
{
	int rc;
	struct hwrm_vnic_rss_cos_lb_ctx_alloc_input req = {0};
	struct hwrm_vnic_rss_cos_lb_ctx_alloc_output *resp =
						bp->hwrm_cmd_resp_addr;

	FUNC1(bp, &req, HWRM_VNIC_RSS_COS_LB_CTX_ALLOC, -1,
			       -1);

	FUNC3(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc)
		bp->vnic_info[vnic_id].fw_rss_cos_lb_ctx[ctx_idx] =
			FUNC2(resp->rss_cos_lb_ctx_id);
	FUNC4(&bp->hwrm_cmd_lock);

	return rc;
}