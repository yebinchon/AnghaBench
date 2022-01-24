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
typedef  int u8 ;
struct wmi_sync_cmd {int data_sync_map; } ;
struct wmi_data_sync_bufs {int traffic_class; int /*<<< orphan*/ * skb; } ;
struct wmi {int fat_pipe_exist; int /*<<< orphan*/  parent_dev; int /*<<< orphan*/  lock; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
typedef  int /*<<< orphan*/  data_sync_bufs ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WMI_SYNCHRONIZE_CMDID ; 
 int WMM_NUM_AC ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wmi*,int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wmi*,int /*<<< orphan*/ *,int,int) ; 
 struct sk_buff* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct wmi_data_sync_bufs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct wmi *wmi, u8 if_idx)
{
	struct sk_buff *skb;
	struct wmi_sync_cmd *cmd;
	struct wmi_data_sync_bufs data_sync_bufs[WMM_NUM_AC];
	enum htc_endpoint_id ep_id;
	u8 index, num_pri_streams = 0;
	int ret = 0;

	FUNC7(data_sync_bufs, 0, sizeof(data_sync_bufs));

	FUNC8(&wmi->lock);

	for (index = 0; index < WMM_NUM_AC; index++) {
		if (wmi->fat_pipe_exist & (1 << index)) {
			num_pri_streams++;
			data_sync_bufs[num_pri_streams - 1].traffic_class =
			    index;
		}
	}

	FUNC9(&wmi->lock);

	skb = FUNC5(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_sync_cmd *) skb->data;

	/*
	 * In the SYNC cmd sent on the control Ep, send a bitmap
	 * of the data eps on which the Data Sync will be sent
	 */
	cmd->data_sync_map = wmi->fat_pipe_exist;

	for (index = 0; index < num_pri_streams; index++) {
		data_sync_bufs[index].skb = FUNC2(0);
		if (data_sync_bufs[index].skb == NULL) {
			ret = -ENOMEM;
			break;
		}
	}

	/*
	 * If buffer allocation for any of the dataSync fails,
	 * then do not send the Synchronize cmd on the control ep
	 */
	if (ret)
		goto free_cmd_skb;

	/*
	 * Send sync cmd followed by sync data messages on all
	 * endpoints being used
	 */
	ret = FUNC3(wmi, if_idx, skb, WMI_SYNCHRONIZE_CMDID,
				  NO_SYNC_WMIFLAG);

	if (ret)
		goto free_data_skb;

	for (index = 0; index < num_pri_streams; index++) {
		if (FUNC0(!data_sync_bufs[index].skb))
			goto free_data_skb;

		ep_id = FUNC1(wmi->parent_dev,
					       data_sync_bufs[index].
					       traffic_class);
		ret =
		    FUNC4(wmi, data_sync_bufs[index].skb,
					      ep_id, if_idx);

		data_sync_bufs[index].skb = NULL;

		if (ret)
			goto free_data_skb;
	}

	return 0;

free_cmd_skb:
	/* free up any resources left over (possibly due to an error) */
	FUNC6(skb);

free_data_skb:
	for (index = 0; index < num_pri_streams; index++)
		FUNC6((struct sk_buff *)data_sync_bufs[index].skb);

	return ret;
}