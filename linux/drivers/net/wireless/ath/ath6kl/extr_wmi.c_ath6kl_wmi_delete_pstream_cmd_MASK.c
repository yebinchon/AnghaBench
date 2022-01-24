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
typedef  size_t u8 ;
typedef  int u16 ;
struct wmi_delete_pstream_cmd {size_t traffic_class; size_t tsid; } ;
struct wmi {int* stream_exist_for_ac; int fat_pipe_exist; int /*<<< orphan*/  parent_dev; int /*<<< orphan*/  lock; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SYNC_BEFORE_WMIFLAG ; 
 int /*<<< orphan*/  WMI_DELETE_PSTREAM_CMDID ; 
 size_t WMM_NUM_AC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC3 (struct wmi*,size_t,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct wmi *wmi, u8 if_idx, u8 traffic_class,
				  u8 tsid)
{
	struct sk_buff *skb;
	struct wmi_delete_pstream_cmd *cmd;
	u16 active_tsids = 0;
	int ret;

	if (traffic_class >= WMM_NUM_AC) {
		FUNC1("invalid traffic class: %d\n", traffic_class);
		return -EINVAL;
	}

	skb = FUNC4(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_delete_pstream_cmd *) skb->data;
	cmd->traffic_class = traffic_class;
	cmd->tsid = tsid;

	FUNC6(&wmi->lock);
	active_tsids = wmi->stream_exist_for_ac[traffic_class];
	FUNC7(&wmi->lock);

	if (!(active_tsids & (1 << tsid))) {
		FUNC5(skb);
		FUNC0(ATH6KL_DBG_WMI,
			   "TSID %d doesn't exist for traffic class: %d\n",
			   tsid, traffic_class);
		return -ENODATA;
	}

	FUNC0(ATH6KL_DBG_WMI,
		   "sending delete_pstream_cmd: traffic class: %d tsid=%d\n",
		   traffic_class, tsid);

	ret = FUNC3(wmi, if_idx, skb, WMI_DELETE_PSTREAM_CMDID,
				  SYNC_BEFORE_WMIFLAG);

	FUNC6(&wmi->lock);
	wmi->stream_exist_for_ac[traffic_class] &= ~(1 << tsid);
	active_tsids = wmi->stream_exist_for_ac[traffic_class];
	FUNC7(&wmi->lock);

	/*
	 * Indicate stream inactivity to driver layer only if all tsids
	 * within this AC are deleted.
	 */
	if (!active_tsids) {
		FUNC2(wmi->parent_dev,
					    traffic_class, false);
		wmi->fat_pipe_exist &= ~(1 << traffic_class);
	}

	return ret;
}