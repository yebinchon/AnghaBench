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
struct wmi_start_scan_cmd {int /*<<< orphan*/  burst_duration_ms; int /*<<< orphan*/  tlvs; int /*<<< orphan*/  common; } ;
struct wmi_start_scan_arg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC3 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wmi_start_scan_arg const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wmi_start_scan_arg const*) ; 
 int FUNC6 (struct wmi_start_scan_arg const*) ; 
 int FUNC7 (struct wmi_start_scan_arg const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct ath10k *ar,
			     const struct wmi_start_scan_arg *arg)
{
	struct wmi_start_scan_cmd *cmd;
	struct sk_buff *skb;
	size_t len;
	int ret;

	ret = FUNC7(arg);
	if (ret)
		return FUNC0(ret);

	len = sizeof(*cmd) + FUNC6(arg);
	skb = FUNC3(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_start_scan_cmd *)skb->data;

	FUNC4(&cmd->common, arg);
	FUNC5(&cmd->tlvs, arg);

	cmd->burst_duration_ms = FUNC1(0);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi start scan\n");
	return skb;
}