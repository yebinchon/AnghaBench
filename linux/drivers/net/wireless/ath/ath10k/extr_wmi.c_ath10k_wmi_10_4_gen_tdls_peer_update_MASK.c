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
typedef  int u32 ;
struct wmi_tdls_peer_update_cmd_arg {int vdev_id; int peer_state; int /*<<< orphan*/  addr; } ;
struct wmi_tdls_peer_capabilities {int /*<<< orphan*/ * peer_chan_list; void* pref_offchan_bw; void* pref_offchan_num; void* is_peer_responder; int /*<<< orphan*/ * peer_operclass; void* peer_operclass_len; void* peer_chan_len; void* self_curr_operclass; void* peer_curr_operclass; void* off_chan_support; void* buff_sta_support; void* peer_qos; } ;
struct wmi_tdls_peer_capab_arg {int peer_chan_len; int buff_sta_support; int off_chan_support; int peer_curr_operclass; int self_curr_operclass; int peer_operclass_len; int is_peer_responder; int pref_offchan_num; int pref_offchan_bw; int /*<<< orphan*/ * peer_operclass; int /*<<< orphan*/  peer_max_sp; int /*<<< orphan*/  peer_uapsd_queues; } ;
struct wmi_channel_arg {int dummy; } ;
struct wmi_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_10_4_tdls_peer_update_cmd {struct wmi_tdls_peer_capabilities peer_capab; void* peer_state; TYPE_1__ peer_macaddr; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TDLS_MAX_SUPP_OPER_CLASSES ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wmi_channel*,struct wmi_channel_arg const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct ath10k *ar,
				     const struct wmi_tdls_peer_update_cmd_arg *arg,
				     const struct wmi_tdls_peer_capab_arg *cap,
				     const struct wmi_channel_arg *chan_arg)
{
	struct wmi_10_4_tdls_peer_update_cmd *cmd;
	struct wmi_tdls_peer_capabilities *peer_cap;
	struct wmi_channel *chan;
	struct sk_buff *skb;
	u32 peer_qos;
	int len, chan_len;
	int i;

	/* tdls peer update cmd has place holder for one channel*/
	chan_len = cap->peer_chan_len ? (cap->peer_chan_len - 1) : 0;

	len = sizeof(*cmd) + chan_len * sizeof(*chan);

	skb = FUNC3(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	FUNC7(skb->data, 0, sizeof(*cmd));

	cmd = (struct wmi_10_4_tdls_peer_update_cmd *)skb->data;
	cmd->vdev_id = FUNC1(arg->vdev_id);
	FUNC6(cmd->peer_macaddr.addr, arg->addr);
	cmd->peer_state = FUNC1(arg->peer_state);

	peer_qos = FUNC4(cap->peer_uapsd_queues,
					       cap->peer_max_sp);

	peer_cap = &cmd->peer_capab;
	peer_cap->peer_qos = FUNC1(peer_qos);
	peer_cap->buff_sta_support = FUNC1(cap->buff_sta_support);
	peer_cap->off_chan_support = FUNC1(cap->off_chan_support);
	peer_cap->peer_curr_operclass = FUNC1(cap->peer_curr_operclass);
	peer_cap->self_curr_operclass = FUNC1(cap->self_curr_operclass);
	peer_cap->peer_chan_len = FUNC1(cap->peer_chan_len);
	peer_cap->peer_operclass_len = FUNC1(cap->peer_operclass_len);

	for (i = 0; i < WMI_TDLS_MAX_SUPP_OPER_CLASSES; i++)
		peer_cap->peer_operclass[i] = cap->peer_operclass[i];

	peer_cap->is_peer_responder = FUNC1(cap->is_peer_responder);
	peer_cap->pref_offchan_num = FUNC1(cap->pref_offchan_num);
	peer_cap->pref_offchan_bw = FUNC1(cap->pref_offchan_bw);

	for (i = 0; i < cap->peer_chan_len; i++) {
		chan = (struct wmi_channel *)&peer_cap->peer_chan_list[i];
		FUNC5(chan, &chan_arg[i]);
	}

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi tdls peer update vdev %i state %d n_chans %u\n",
		   arg->vdev_id, arg->peer_state, cap->peer_chan_len);
	return skb;
}