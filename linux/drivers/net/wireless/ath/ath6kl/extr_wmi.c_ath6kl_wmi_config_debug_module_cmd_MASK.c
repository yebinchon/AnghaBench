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
typedef  int /*<<< orphan*/  u32 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath6kl_wmix_dbglog_cfg_module_cmd {void* config; void* valid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMIX_DBGLOG_CFG_MODULE_CMDID ; 
 int FUNC0 (struct wmi*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u32 valid, u32 config)
{
	struct ath6kl_wmix_dbglog_cfg_module_cmd *cmd;
	struct sk_buff *skb;
	int ret;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct ath6kl_wmix_dbglog_cfg_module_cmd *) skb->data;
	cmd->valid = FUNC2(valid);
	cmd->config = FUNC2(config);

	ret = FUNC0(wmi, skb, WMIX_DBGLOG_CFG_MODULE_CMDID,
				       NO_SYNC_WMIFLAG);
	return ret;
}