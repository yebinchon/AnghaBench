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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wmi_set_wow_mode_cmd {int /*<<< orphan*/  host_req_delay; void* filter; void* enable_wow; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  enum ath6kl_wow_mode { ____Placeholder_ath6kl_wow_mode } ath6kl_wow_mode ;

/* Variables and functions */
 int ATH6KL_WOW_MODE_DISABLE ; 
 int ATH6KL_WOW_MODE_ENABLE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_WOW_MODE_CMDID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 

int FUNC5(struct wmi *wmi, u8 if_idx,
				enum ath6kl_wow_mode wow_mode,
				u32 filter, u16 host_req_delay)
{
	struct sk_buff *skb;
	struct wmi_set_wow_mode_cmd *cmd;
	int ret;

	if ((wow_mode != ATH6KL_WOW_MODE_ENABLE) &&
	    wow_mode != ATH6KL_WOW_MODE_DISABLE) {
		FUNC0("invalid wow mode: %d\n", wow_mode);
		return -EINVAL;
	}

	skb = FUNC2(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_set_wow_mode_cmd *) skb->data;
	cmd->enable_wow = FUNC4(wow_mode);
	cmd->filter = FUNC4(filter);
	cmd->host_req_delay = FUNC3(host_req_delay);

	ret = FUNC1(wmi, if_idx, skb, WMI_SET_WOW_MODE_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}