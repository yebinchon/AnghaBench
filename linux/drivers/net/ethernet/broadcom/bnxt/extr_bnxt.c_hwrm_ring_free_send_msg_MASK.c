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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct hwrm_ring_free_output {int /*<<< orphan*/  error_code; } ;
struct hwrm_ring_free_input {int /*<<< orphan*/  ring_id; int /*<<< orphan*/  ring_type; int /*<<< orphan*/  member_0; } ;
struct bnxt_ring_struct {int /*<<< orphan*/  fw_ring_id; } ;
struct bnxt {int /*<<< orphan*/  dev; int /*<<< orphan*/  hwrm_cmd_lock; int /*<<< orphan*/  state; struct hwrm_ring_free_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_STATE_FW_FATAL_COND ; 
 int EIO ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_RING_FREE ; 
 int FUNC0 (struct bnxt*,struct hwrm_ring_free_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_ring_free_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct bnxt *bp,
				   struct bnxt_ring_struct *ring,
				   u32 ring_type, int cmpl_ring_id)
{
	int rc;
	struct hwrm_ring_free_input req = {0};
	struct hwrm_ring_free_output *resp = bp->hwrm_cmd_resp_addr;
	u16 error_code;

	if (FUNC7(BNXT_STATE_FW_FATAL_COND, &bp->state))
		return 0;

	FUNC1(bp, &req, HWRM_RING_FREE, cmpl_ring_id, -1);
	req.ring_type = ring_type;
	req.ring_id = FUNC2(ring->fw_ring_id);

	FUNC4(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	error_code = FUNC3(resp->error_code);
	FUNC5(&bp->hwrm_cmd_lock);

	if (rc || error_code) {
		FUNC6(bp->dev, "hwrm_ring_free type %d failed. rc:%x err:%x\n",
			   ring_type, rc, error_code);
		return -EIO;
	}
	return 0;
}