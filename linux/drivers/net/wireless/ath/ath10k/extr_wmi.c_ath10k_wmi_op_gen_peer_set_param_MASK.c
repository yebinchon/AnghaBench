#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_peer_set_param_cmd {TYPE_1__ peer_macaddr; void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_peer_param { ____Placeholder_wmi_peer_param } wmi_peer_param ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/  const*,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id,
				 const u8 *peer_addr,
				 enum wmi_peer_param param_id,
				 u32 param_value)
{
	struct wmi_peer_set_param_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_peer_set_param_cmd *)skb->data;
	cmd->vdev_id     = FUNC1(vdev_id);
	cmd->param_id    = FUNC1(param_id);
	cmd->param_value = FUNC1(param_value);
	FUNC4(cmd->peer_macaddr.addr, peer_addr);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi vdev %d peer 0x%pM set param %d value %d\n",
		   vdev_id, peer_addr, param_id, param_value);
	return skb;
}