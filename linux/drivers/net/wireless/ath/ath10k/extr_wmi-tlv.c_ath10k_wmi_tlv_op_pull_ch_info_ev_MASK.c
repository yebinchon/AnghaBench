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
struct wmi_tlv_chan_info_event {int /*<<< orphan*/  mac_clk_mhz; int /*<<< orphan*/  cycle_count; int /*<<< orphan*/  rx_clear_count; int /*<<< orphan*/  noise_floor; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  freq; int /*<<< orphan*/  err_code; } ;
struct wmi_ch_info_ev_arg {int /*<<< orphan*/  mac_clk_mhz; int /*<<< orphan*/  cycle_count; int /*<<< orphan*/  rx_clear_count; int /*<<< orphan*/  noise_floor; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  freq; int /*<<< orphan*/  err_code; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {TYPE_2__* running_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_CHAN_INFO_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 void** FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar,
					     struct sk_buff *skb,
					     struct wmi_ch_info_ev_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_chan_info_event *ev;
	int ret;

	tb = FUNC3(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_CHAN_INFO_EVENT];
	if (!ev) {
		FUNC4(tb);
		return -EPROTO;
	}

	arg->err_code = ev->err_code;
	arg->freq = ev->freq;
	arg->cmd_flags = ev->cmd_flags;
	arg->noise_floor = ev->noise_floor;
	arg->rx_clear_count = ev->rx_clear_count;
	arg->cycle_count = ev->cycle_count;
	if (FUNC5(ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL,
		     ar->running_fw->fw_file.fw_features))
		arg->mac_clk_mhz = ev->mac_clk_mhz;

	FUNC4(tb);
	return 0;
}