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
struct wmi_peer_assoc_complete_arg {scalar_t__ peer_reassoc; int /*<<< orphan*/  addr; int /*<<< orphan*/  vdev_id; } ;
struct wmi_10_2_peer_assoc_complete_cmd {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC2 (struct ath10k*,size_t) ; 
 int FUNC3 (struct wmi_peer_assoc_complete_arg const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,struct wmi_peer_assoc_complete_arg const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar,
				  const struct wmi_peer_assoc_complete_arg *arg)
{
	size_t len = sizeof(struct wmi_10_2_peer_assoc_complete_cmd);
	struct sk_buff *skb;
	int ret;

	ret = FUNC3(arg);
	if (ret)
		return FUNC0(ret);

	skb = FUNC2(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	FUNC4(ar, skb->data, arg);

	FUNC1(ar, ATH10K_DBG_WMI,
		   "wmi peer assoc vdev %d addr %pM (%s)\n",
		   arg->vdev_id, arg->addr,
		   arg->peer_reassoc ? "reassociate" : "new");
	return skb;
}