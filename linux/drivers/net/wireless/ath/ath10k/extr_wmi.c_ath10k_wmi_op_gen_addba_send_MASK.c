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
struct wmi_addba_send_cmd {void* buffersize; void* tid; TYPE_1__ peer_macaddr; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id, const u8 *mac,
			     u32 tid, u32 buf_size)
{
	struct wmi_addba_send_cmd *cmd;
	struct sk_buff *skb;

	if (!mac)
		return FUNC0(-EINVAL);

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_addba_send_cmd *)skb->data;
	cmd->vdev_id = FUNC1(vdev_id);
	FUNC4(cmd->peer_macaddr.addr, mac);
	cmd->tid = FUNC1(tid);
	cmd->buffersize = FUNC1(buf_size);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi addba send vdev_id 0x%X mac_addr %pM tid %u bufsize %u\n",
		   vdev_id, mac, tid, buf_size);
	return skb;
}