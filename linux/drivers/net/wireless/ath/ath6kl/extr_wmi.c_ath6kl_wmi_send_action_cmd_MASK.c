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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct wmi_send_action_cmd {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; void* wait; void* freq; void* id; } ;
struct wmi {scalar_t__ last_mgmt_tx_frame_len; int /*<<< orphan*/ * last_mgmt_tx_frame; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SEND_ACTION_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct wmi *wmi, u8 if_idx, u32 id,
				      u32 freq, u32 wait, const u8 *data,
				      u16 data_len)
{
	struct sk_buff *skb;
	struct wmi_send_action_cmd *p;
	u8 *buf;

	if (wait)
		return -EINVAL; /* Offload for wait not supported */

	buf = FUNC6(data_len, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	skb = FUNC2(sizeof(*p) + data_len);
	if (!skb) {
		FUNC5(buf);
		return -ENOMEM;
	}

	FUNC5(wmi->last_mgmt_tx_frame);
	FUNC7(buf, data, data_len);
	wmi->last_mgmt_tx_frame = buf;
	wmi->last_mgmt_tx_frame_len = data_len;

	FUNC0(ATH6KL_DBG_WMI,
		   "send_action_cmd: id=%u freq=%u wait=%u len=%u\n",
		   id, freq, wait, data_len);
	p = (struct wmi_send_action_cmd *) skb->data;
	p->id = FUNC4(id);
	p->freq = FUNC4(freq);
	p->wait = FUNC4(wait);
	p->len = FUNC3(data_len);
	FUNC7(p->data, data, data_len);
	return FUNC1(wmi, if_idx, skb, WMI_SEND_ACTION_CMDID,
				   NO_SYNC_WMIFLAG);
}