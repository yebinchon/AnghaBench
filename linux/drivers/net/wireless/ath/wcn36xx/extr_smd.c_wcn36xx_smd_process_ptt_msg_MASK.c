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
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_process_ptt_msg_req_msg {TYPE_1__ header; int /*<<< orphan*/  ptt_msg; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_process_ptt_msg_req_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_process_ptt_msg_req_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct wcn36xx_hal_process_ptt_msg_req_msg*) ; 
 struct wcn36xx_hal_process_ptt_msg_req_msg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int FUNC9 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC10(struct wcn36xx *wcn,
				struct ieee80211_vif *vif, void *ptt_msg, size_t len,
		void **ptt_rsp_msg)
{
	struct wcn36xx_hal_process_ptt_msg_req_msg *p_msg_body;
	int ret;

	FUNC5(&wcn->hal_mutex);
	p_msg_body = FUNC3(
		sizeof(struct wcn36xx_hal_process_ptt_msg_req_msg) + len,
		GFP_ATOMIC);
	if (!p_msg_body) {
		ret = -ENOMEM;
		goto out_nomem;
	}
	FUNC0(p_msg_body, len);

	FUNC4(&p_msg_body->ptt_msg, ptt_msg, len);

	FUNC1(wcn->hal_buf, p_msg_body);

	ret = FUNC9(wcn, p_msg_body->header.len);
	if (ret) {
		FUNC7("Sending hal_process_ptt_msg failed\n");
		goto out;
	}
	ret = FUNC8(wcn->hal_buf, wcn->hal_rsp_len,
					      ptt_rsp_msg);
	if (ret) {
		FUNC7("process_ptt_msg response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC2(p_msg_body);
out_nomem:
	FUNC6(&wcn->hal_mutex);
	return ret;
}