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
typedef  void* u8 ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_set_bss_key_req_msg {int enc_type; int num_keys; TYPE_2__ header; TYPE_1__* keys; void* bss_idx; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
typedef  enum ani_ed_type { ____Placeholder_ani_ed_type } ani_ed_type ;
struct TYPE_3__ {int /*<<< orphan*/  key; void* length; scalar_t__ pae_role; int /*<<< orphan*/  direction; scalar_t__ unicast; void* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_set_bss_key_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_set_bss_key_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_RX_ONLY ; 
 int /*<<< orphan*/  WCN36XX_HAL_SET_BSSKEY_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wcn36xx *wcn,
			   enum ani_ed_type enc_type,
			   u8 bssidx,
			   u8 keyidx,
			   u8 keylen,
			   u8 *key)
{
	struct wcn36xx_hal_set_bss_key_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_SET_BSSKEY_REQ);
	msg_body.bss_idx = bssidx;
	msg_body.enc_type = enc_type;
	msg_body.num_keys = 1;
	msg_body.keys[0].id = keyidx;
	msg_body.keys[0].unicast = 0;
	msg_body.keys[0].direction = WCN36XX_HAL_RX_ONLY;
	msg_body.keys[0].pae_role = 0;
	msg_body.keys[0].length = keylen;
	FUNC2(msg_body.keys[0].key, key, keylen);

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC7(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_set_bsskey failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_set_bsskey response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}