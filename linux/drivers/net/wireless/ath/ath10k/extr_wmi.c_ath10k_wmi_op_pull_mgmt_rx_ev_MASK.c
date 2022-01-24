#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct wmi_mgmt_rx_hdr_v1 {int /*<<< orphan*/  rate; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  snr; int /*<<< orphan*/  status; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  channel; } ;
struct wmi_mgmt_rx_ext_info {int dummy; } ;
struct TYPE_6__ {struct wmi_mgmt_rx_hdr_v1 v1; } ;
struct wmi_mgmt_rx_event_v2 {TYPE_3__ hdr; } ;
struct wmi_mgmt_rx_event_v1 {struct wmi_mgmt_rx_hdr_v1 hdr; } ;
struct wmi_mgmt_rx_ev_arg {int /*<<< orphan*/  ext_info; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  status; int /*<<< orphan*/  rate; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  snr; int /*<<< orphan*/  channel; } ;
struct sk_buff {size_t data; size_t len; } ;
struct ath10k {TYPE_2__* running_fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/  ATH10K_FW_FEATURE_EXT_WMI_MGMT_RX ; 
 int EPROTO ; 
 int WMI_RX_STATUS_EXT_INFO ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wmi_mgmt_rx_ext_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar, struct sk_buff *skb,
					 struct wmi_mgmt_rx_ev_arg *arg)
{
	struct wmi_mgmt_rx_event_v1 *ev_v1;
	struct wmi_mgmt_rx_event_v2 *ev_v2;
	struct wmi_mgmt_rx_hdr_v1 *ev_hdr;
	struct wmi_mgmt_rx_ext_info *ext_info;
	size_t pull_len;
	u32 msdu_len;
	u32 len;

	if (FUNC6(ATH10K_FW_FEATURE_EXT_WMI_MGMT_RX,
		     ar->running_fw->fw_file.fw_features)) {
		ev_v2 = (struct wmi_mgmt_rx_event_v2 *)skb->data;
		ev_hdr = &ev_v2->hdr.v1;
		pull_len = sizeof(*ev_v2);
	} else {
		ev_v1 = (struct wmi_mgmt_rx_event_v1 *)skb->data;
		ev_hdr = &ev_v1->hdr;
		pull_len = sizeof(*ev_v1);
	}

	if (skb->len < pull_len)
		return -EPROTO;

	FUNC4(skb, pull_len);
	arg->channel = ev_hdr->channel;
	arg->buf_len = ev_hdr->buf_len;
	arg->status = ev_hdr->status;
	arg->snr = ev_hdr->snr;
	arg->phy_mode = ev_hdr->phy_mode;
	arg->rate = ev_hdr->rate;

	msdu_len = FUNC1(arg->buf_len);
	if (skb->len < msdu_len)
		return -EPROTO;

	if (FUNC2(arg->status) & WMI_RX_STATUS_EXT_INFO) {
		len = FUNC0(FUNC2(arg->buf_len), 4);
		ext_info = (struct wmi_mgmt_rx_ext_info *)(skb->data + len);
		FUNC3(&arg->ext_info, ext_info,
		       sizeof(struct wmi_mgmt_rx_ext_info));
	}
	/* the WMI buffer might've ended up being padded to 4 bytes due to HTC
	 * trailer with credit update. Trim the excess garbage.
	 */
	FUNC5(skb, msdu_len);

	return 0;
}