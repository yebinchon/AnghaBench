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
struct wmi_vdev_set_param_cmd {void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WMI_VDEV_PARAM_UNSUPPORTED ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar, u32 vdev_id,
				 u32 param_id, u32 param_value)
{
	struct wmi_vdev_set_param_cmd *cmd;
	struct sk_buff *skb;

	if (param_id == WMI_VDEV_PARAM_UNSUPPORTED) {
		FUNC2(ar, ATH10K_DBG_WMI,
			   "vdev param %d not supported by firmware\n",
			    param_id);
		return FUNC0(-EOPNOTSUPP);
	}

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_vdev_set_param_cmd *)skb->data;
	cmd->vdev_id     = FUNC1(vdev_id);
	cmd->param_id    = FUNC1(param_id);
	cmd->param_value = FUNC1(param_value);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi vdev id 0x%x set param %d value %d\n",
		   vdev_id, param_id, param_value);
	return skb;
}