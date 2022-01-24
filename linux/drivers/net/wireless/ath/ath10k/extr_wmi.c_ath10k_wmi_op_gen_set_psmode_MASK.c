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
typedef  int u32 ;
struct wmi_sta_powersave_mode_cmd {void* sta_ps_mode; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_sta_ps_mode { ____Placeholder_wmi_sta_ps_mode } wmi_sta_ps_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar, u32 vdev_id,
			     enum wmi_sta_ps_mode psmode)
{
	struct wmi_sta_powersave_mode_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_sta_powersave_mode_cmd *)skb->data;
	cmd->vdev_id     = FUNC1(vdev_id);
	cmd->sta_ps_mode = FUNC1(psmode);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi set powersave id 0x%x mode %d\n",
		   vdev_id, psmode);
	return skb;
}