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
typedef  scalar_t__ u32 ;
struct output {int /*<<< orphan*/  resp_len; } ;
struct net_device {int dummy; } ;
struct input {int /*<<< orphan*/  resp_addr; } ;
struct bnxt_fw_msg {scalar_t__ resp_max_len; int /*<<< orphan*/  resp; int /*<<< orphan*/  timeout; int /*<<< orphan*/  msg_len; struct input* msg; } ;
struct bnxt_en_dev {struct net_device* net; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; struct output* hwrm_cmd_resp_addr; int /*<<< orphan*/  hwrm_cmd_resp_dma_addr; scalar_t__ fw_reset_state; } ;

/* Variables and functions */
 int BNXT_ROCE_ULP ; 
 int EBUSY ; 
 int FUNC0 (struct bnxt*,struct input*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct output*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct bnxt_en_dev *edev, int ulp_id,
			 struct bnxt_fw_msg *fw_msg)
{
	struct net_device *dev = edev->net;
	struct bnxt *bp = FUNC6(dev);
	struct input *req;
	int rc;

	if (ulp_id != BNXT_ROCE_ULP && bp->fw_reset_state)
		return -EBUSY;

	FUNC4(&bp->hwrm_cmd_lock);
	req = fw_msg->msg;
	req->resp_addr = FUNC1(bp->hwrm_cmd_resp_dma_addr);
	rc = FUNC0(bp, fw_msg->msg, fw_msg->msg_len,
				fw_msg->timeout);
	if (!rc) {
		struct output *resp = bp->hwrm_cmd_resp_addr;
		u32 len = FUNC2(resp->resp_len);

		if (fw_msg->resp_max_len < len)
			len = fw_msg->resp_max_len;

		FUNC3(fw_msg->resp, resp, len);
	}
	FUNC5(&bp->hwrm_cmd_lock);
	return rc;
}