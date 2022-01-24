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
typedef  scalar_t__ u16 ;
struct hwrm_wol_filter_qcfg_output {scalar_t__ wol_type; int /*<<< orphan*/  wol_filter_id; int /*<<< orphan*/  next_handle; } ;
struct hwrm_wol_filter_qcfg_input {void* handle; void* port_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ port_id; } ;
struct bnxt {int wol; int /*<<< orphan*/  hwrm_cmd_lock; int /*<<< orphan*/  wol_filter_id; TYPE_1__ pf; struct hwrm_wol_filter_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_WOL_FILTER_QCFG ; 
 scalar_t__ WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT ; 
 int FUNC0 (struct bnxt*,struct hwrm_wol_filter_qcfg_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_wol_filter_qcfg_input*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC6(struct bnxt *bp, u16 handle)
{
	struct hwrm_wol_filter_qcfg_input req = {0};
	struct hwrm_wol_filter_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
	u16 next_handle = 0;
	int rc;

	FUNC1(bp, &req, HWRM_WOL_FILTER_QCFG, -1, -1);
	req.port_id = FUNC2(bp->pf.port_id);
	req.handle = FUNC2(handle);
	FUNC4(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc) {
		next_handle = FUNC3(resp->next_handle);
		if (next_handle != 0) {
			if (resp->wol_type ==
			    WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT) {
				bp->wol = 1;
				bp->wol_filter_id = resp->wol_filter_id;
			}
		}
	}
	FUNC5(&bp->hwrm_cmd_lock);
	return next_handle;
}