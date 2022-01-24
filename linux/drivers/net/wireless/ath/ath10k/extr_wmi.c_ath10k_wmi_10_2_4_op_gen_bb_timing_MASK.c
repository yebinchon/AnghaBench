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
struct wmi_pdev_bb_timing_cfg_cmd {void* bb_xpa_timing; void* bb_tx_timing; } ;
struct wmi_bb_timing_cfg_arg {int /*<<< orphan*/  bb_xpa_timing; int /*<<< orphan*/  bb_tx_timing; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar,
				   const struct wmi_bb_timing_cfg_arg *arg)
{
	struct wmi_pdev_bb_timing_cfg_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_pdev_bb_timing_cfg_cmd *)skb->data;
	cmd->bb_tx_timing = FUNC1(arg->bb_tx_timing);
	cmd->bb_xpa_timing = FUNC1(arg->bb_xpa_timing);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi pdev bb_tx_timing 0x%x bb_xpa_timing 0x%x\n",
		   arg->bb_tx_timing, arg->bb_xpa_timing);
	return skb;
}