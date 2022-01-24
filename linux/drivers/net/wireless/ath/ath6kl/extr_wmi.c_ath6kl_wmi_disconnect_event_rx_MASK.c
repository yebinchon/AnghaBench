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
struct wmi_disconnect_event {int /*<<< orphan*/  proto_reason_status; int /*<<< orphan*/  assoc_info; int /*<<< orphan*/  assoc_resp_len; int /*<<< orphan*/  bssid; int /*<<< orphan*/  disconn_reason; } ;
struct wmi {int traffic_class; int is_wmm_enabled; } ;
struct ath6kl_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wmi *wmi, u8 *datap, int len,
					  struct ath6kl_vif *vif)
{
	struct wmi_disconnect_event *ev;
	wmi->traffic_class = 100;

	if (len < sizeof(struct wmi_disconnect_event))
		return -EINVAL;

	ev = (struct wmi_disconnect_event *) datap;

	FUNC0(ATH6KL_DBG_WMI,
		   "wmi event disconnect proto_reason %d bssid %pM wmi_reason %d assoc_resp_len %d\n",
		   FUNC2(ev->proto_reason_status), ev->bssid,
		   ev->disconn_reason, ev->assoc_resp_len);

	wmi->is_wmm_enabled = false;

	FUNC1(vif, ev->disconn_reason,
				ev->bssid, ev->assoc_resp_len, ev->assoc_info,
				FUNC2(ev->proto_reason_status));

	return 0;
}