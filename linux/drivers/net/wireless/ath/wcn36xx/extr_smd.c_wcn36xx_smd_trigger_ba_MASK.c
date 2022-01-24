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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_trigger_ba_req_msg {int candidate_cnt; TYPE_1__ header; scalar_t__ session_id; } ;
struct wcn36xx_hal_trigger_ba_req_candidate {int tid_bitmap; int /*<<< orphan*/  sta_index; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; scalar_t__ hal_buf; } ;
typedef  int /*<<< orphan*/  msg_body ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_trigger_ba_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct wcn36xx_hal_trigger_ba_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_TRIGGER_BA_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct wcn36xx*,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct wcn36xx *wcn, u8 sta_index)
{
	struct wcn36xx_hal_trigger_ba_req_msg msg_body;
	struct wcn36xx_hal_trigger_ba_req_candidate *candidate;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_TRIGGER_BA_REQ);

	msg_body.session_id = 0;
	msg_body.candidate_cnt = 1;
	msg_body.header.len += sizeof(*candidate);
	FUNC1(wcn->hal_buf, msg_body);

	candidate = (struct wcn36xx_hal_trigger_ba_req_candidate *)
		(wcn->hal_buf + sizeof(msg_body));
	candidate->sta_index = sta_index;
	candidate->tid_bitmap = 1;

	ret = FUNC5(wcn, msg_body.header.len);
	if (ret) {
		FUNC4("Sending hal_trigger_ba failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC4("hal_trigger_ba response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}