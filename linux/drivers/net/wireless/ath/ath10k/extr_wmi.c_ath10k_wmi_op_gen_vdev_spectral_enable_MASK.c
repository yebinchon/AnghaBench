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
struct wmi_vdev_spectral_enable_cmd {void* enable_cmd; void* trigger_cmd; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC3(struct ath10k *ar, u32 vdev_id,
				       u32 trigger, u32 enable)
{
	struct wmi_vdev_spectral_enable_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC2(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_vdev_spectral_enable_cmd *)skb->data;
	cmd->vdev_id = FUNC1(vdev_id);
	cmd->trigger_cmd = FUNC1(trigger);
	cmd->enable_cmd = FUNC1(enable);

	return skb;
}