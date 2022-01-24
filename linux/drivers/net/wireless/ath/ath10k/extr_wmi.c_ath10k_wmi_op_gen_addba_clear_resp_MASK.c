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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_addba_clear_resp_cmd {TYPE_1__ peer_macaddr; int /*<<< orphan*/  vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id,
				   const u8 *mac)
{
	struct wmi_addba_clear_resp_cmd *cmd;
	struct sk_buff *skb;

	if (!mac)
		return FUNC0(-EINVAL);

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_addba_clear_resp_cmd *)skb->data;
	cmd->vdev_id = FUNC1(vdev_id);
	FUNC4(cmd->peer_macaddr.addr, mac);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi addba clear resp vdev_id 0x%X mac_addr %pM\n",
		   vdev_id, mac);
	return skb;
}