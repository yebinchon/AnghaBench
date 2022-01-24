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
struct wmi_scan_chan_list_cmd {struct wmi_channel* chan_info; int /*<<< orphan*/  num_scan_chans; } ;
struct wmi_scan_chan_list_arg {int n_channels; struct wmi_channel_arg* channels; } ;
struct wmi_channel_arg {int dummy; } ;
struct wmi_channel {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wmi_channel*,struct wmi_channel_arg*) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar,
				 const struct wmi_scan_chan_list_arg *arg)
{
	struct wmi_scan_chan_list_cmd *cmd;
	struct sk_buff *skb;
	struct wmi_channel_arg *ch;
	struct wmi_channel *ci;
	int len;
	int i;

	len = sizeof(*cmd) + arg->n_channels * sizeof(struct wmi_channel);

	skb = FUNC2(ar, len);
	if (!skb)
		return FUNC0(-EINVAL);

	cmd = (struct wmi_scan_chan_list_cmd *)skb->data;
	cmd->num_scan_chans = FUNC1(arg->n_channels);

	for (i = 0; i < arg->n_channels; i++) {
		ch = &arg->channels[i];
		ci = &cmd->chan_info[i];

		FUNC3(ci, ch);
	}

	return skb;
}