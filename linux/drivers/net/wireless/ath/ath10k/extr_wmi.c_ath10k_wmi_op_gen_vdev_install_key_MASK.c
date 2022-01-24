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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_vdev_install_key_cmd {int /*<<< orphan*/  key_data; TYPE_1__ peer_macaddr; void* key_rxmic_len; void* key_txmic_len; void* key_len; void* key_cipher; void* key_flags; void* key_idx; void* vdev_id; } ;
struct wmi_vdev_install_key_arg {scalar_t__ key_cipher; scalar_t__ key_len; scalar_t__ vdev_id; scalar_t__ key_idx; scalar_t__ key_flags; scalar_t__ key_txmic_len; scalar_t__ key_rxmic_len; int /*<<< orphan*/ * key_data; int /*<<< orphan*/  macaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WMI_CIPHER_NONE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct ath10k *ar,
				   const struct wmi_vdev_install_key_arg *arg)
{
	struct wmi_vdev_install_key_cmd *cmd;
	struct sk_buff *skb;

	if (arg->key_cipher == WMI_CIPHER_NONE && arg->key_data != NULL)
		return FUNC0(-EINVAL);
	if (arg->key_cipher != WMI_CIPHER_NONE && arg->key_data == NULL)
		return FUNC0(-EINVAL);

	skb = FUNC3(ar, sizeof(*cmd) + arg->key_len);
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_vdev_install_key_cmd *)skb->data;
	cmd->vdev_id       = FUNC1(arg->vdev_id);
	cmd->key_idx       = FUNC1(arg->key_idx);
	cmd->key_flags     = FUNC1(arg->key_flags);
	cmd->key_cipher    = FUNC1(arg->key_cipher);
	cmd->key_len       = FUNC1(arg->key_len);
	cmd->key_txmic_len = FUNC1(arg->key_txmic_len);
	cmd->key_rxmic_len = FUNC1(arg->key_rxmic_len);

	if (arg->macaddr)
		FUNC4(cmd->peer_macaddr.addr, arg->macaddr);
	if (arg->key_data)
		FUNC5(cmd->key_data, arg->key_data, arg->key_len);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi vdev install key idx %d cipher %d len %d\n",
		   arg->key_idx, arg->key_cipher, arg->key_len);
	return skb;
}