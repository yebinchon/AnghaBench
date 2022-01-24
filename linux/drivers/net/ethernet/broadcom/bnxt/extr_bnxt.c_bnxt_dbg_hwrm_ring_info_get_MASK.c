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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hwrm_dbg_ring_info_get_output {int /*<<< orphan*/  consumer_index; int /*<<< orphan*/  producer_index; } ;
struct hwrm_dbg_ring_info_get_input {int /*<<< orphan*/  fw_ring_id; int /*<<< orphan*/  ring_type; int /*<<< orphan*/  member_0; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; struct hwrm_dbg_ring_info_get_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_DBG_RING_INFO_GET ; 
 int FUNC0 (struct bnxt*,struct hwrm_dbg_ring_info_get_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_dbg_ring_info_get_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp, u8 ring_type,
				       u32 ring_id, u32 *prod, u32 *cons)
{
	struct hwrm_dbg_ring_info_get_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_dbg_ring_info_get_input req = {0};
	int rc;

	FUNC1(bp, &req, HWRM_DBG_RING_INFO_GET, -1, -1);
	req.ring_type = ring_type;
	req.fw_ring_id = FUNC2(ring_id);
	FUNC4(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc) {
		*prod = FUNC3(resp->producer_index);
		*cons = FUNC3(resp->consumer_index);
	}
	FUNC5(&bp->hwrm_cmd_lock);
	return rc;
}