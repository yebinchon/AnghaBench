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
struct wmi_tlv_scan_chan_list_cmd {int /*<<< orphan*/  num_scan_chans; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct wmi_scan_chan_list_arg {int n_channels; struct wmi_channel_arg* channels; } ;
struct wmi_channel_arg {int dummy; } ;
struct wmi_channel {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_ARRAY_STRUCT ; 
 int WMI_TLV_TAG_STRUCT_CHANNEL ; 
 int WMI_TLV_TAG_STRUCT_SCAN_CHAN_LIST_CMD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wmi_channel*,struct wmi_channel_arg*) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct ath10k *ar,
				     const struct wmi_scan_chan_list_arg *arg)
{
	struct wmi_tlv_scan_chan_list_cmd *cmd;
	struct wmi_channel *ci;
	struct wmi_channel_arg *ch;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t chans_len, len;
	int i;
	void *ptr, *chans;

	chans_len = arg->n_channels * (sizeof(*tlv) + sizeof(*ci));
	len = (sizeof(*tlv) + sizeof(*cmd)) +
	      (sizeof(*tlv) + chans_len);

	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_SCAN_CHAN_LIST_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->num_scan_chans = FUNC2(arg->n_channels);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_ARRAY_STRUCT);
	tlv->len = FUNC1(chans_len);
	chans = (void *)tlv->value;

	for (i = 0; i < arg->n_channels; i++) {
		ch = &arg->channels[i];

		tlv = chans;
		tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_CHANNEL);
		tlv->len = FUNC1(sizeof(*ci));
		ci = (void *)tlv->value;

		FUNC5(ci, ch);

		chans += sizeof(*tlv);
		chans += sizeof(*ci);
	}

	ptr += sizeof(*tlv);
	ptr += chans_len;

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv scan chan list\n");
	return skb;
}