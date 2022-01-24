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
typedef  scalar_t__ u32 ;
struct wmi_pdev_set_param_cmd {void* param_value; void* param_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WMI_PDEV_PARAM_UNSUPPORTED ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,scalar_t__) ; 
 struct sk_buff* FUNC4 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 id, u32 value)
{
	struct wmi_pdev_set_param_cmd *cmd;
	struct sk_buff *skb;

	if (id == WMI_PDEV_PARAM_UNSUPPORTED) {
		FUNC3(ar, "pdev param %d not supported by firmware\n",
			    id);
		return FUNC0(-EOPNOTSUPP);
	}

	skb = FUNC4(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_pdev_set_param_cmd *)skb->data;
	cmd->param_id    = FUNC1(id);
	cmd->param_value = FUNC1(value);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi pdev set param %d value %d\n",
		   id, value);
	return skb;
}