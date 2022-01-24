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
struct wcn36xx_vif {int /*<<< orphan*/  bss_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  bss_index; scalar_t__ mc_addr_count; } ;
struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg {TYPE_2__ header; TYPE_1__ mc_addr_list; } ;
struct wcn36xx_hal_rcv_flt_mc_addr_list_type {int dummy; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; scalar_t__ hal_buf; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_HAL_8023_MULTICAST_LIST_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct wcn36xx_hal_rcv_flt_mc_addr_list_type*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC7 (struct ieee80211_vif*) ; 

int FUNC8(struct wcn36xx *wcn,
			    struct ieee80211_vif *vif,
			    struct wcn36xx_hal_rcv_flt_mc_addr_list_type *fp)
{
	struct wcn36xx_vif *vif_priv = FUNC7(vif);
	struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg *msg_body = NULL;
	int ret;

	FUNC2(&wcn->hal_mutex);

	msg_body = (struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg *)
		   wcn->hal_buf;
	FUNC0(&msg_body->header, WCN36XX_HAL_8023_MULTICAST_LIST_REQ,
		     sizeof(msg_body->mc_addr_list));

	/* An empty list means all mc traffic will be received */
	if (fp)
		FUNC1(&msg_body->mc_addr_list, fp,
		       sizeof(msg_body->mc_addr_list));
	else
		msg_body->mc_addr_list.mc_addr_count = 0;

	msg_body->mc_addr_list.bss_index = vif_priv->bss_index;

	ret = FUNC6(wcn, msg_body->header.len);
	if (ret) {
		FUNC4("Sending HAL_8023_MULTICAST_LIST failed\n");
		goto out;
	}
	ret = FUNC5(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC4("HAL_8023_MULTICAST_LIST rsp failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}