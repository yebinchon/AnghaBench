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
struct wmi_wmm_params_all_arg {int /*<<< orphan*/  ac_vo; int /*<<< orphan*/  ac_vi; int /*<<< orphan*/  ac_bk; int /*<<< orphan*/  ac_be; } ;
struct wmi_pdev_set_wmm_params {int /*<<< orphan*/  ac_vo; int /*<<< orphan*/  ac_vi; int /*<<< orphan*/  ac_bk; int /*<<< orphan*/  ac_be; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar,
			       const struct wmi_wmm_params_all_arg *arg)
{
	struct wmi_pdev_set_wmm_params *cmd;
	struct sk_buff *skb;

	skb = FUNC2(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_pdev_set_wmm_params *)skb->data;
	FUNC3(&cmd->ac_be, &arg->ac_be);
	FUNC3(&cmd->ac_bk, &arg->ac_bk);
	FUNC3(&cmd->ac_vi, &arg->ac_vi);
	FUNC3(&cmd->ac_vo, &arg->ac_vo);

	FUNC1(ar, ATH10K_DBG_WMI, "wmi pdev set wmm params\n");
	return skb;
}