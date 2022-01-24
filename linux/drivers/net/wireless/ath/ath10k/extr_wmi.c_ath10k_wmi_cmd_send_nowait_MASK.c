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
typedef  int /*<<< orphan*/  u32 ;
struct wmi_cmd_hdr {int /*<<< orphan*/  cmd_id; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ath10k_skb_cb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  eid; } ;
struct ath10k {TYPE_1__ wmi; int /*<<< orphan*/  htc; } ;

/* Variables and functions */
 struct ath10k_skb_cb* FUNC0 (struct sk_buff*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_CMD_HDR_CMD_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_skb_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC8(struct ath10k *ar, struct sk_buff *skb,
			       u32 cmd_id)
{
	struct ath10k_skb_cb *skb_cb = FUNC0(skb);
	struct wmi_cmd_hdr *cmd_hdr;
	int ret;
	u32 cmd = 0;

	if (FUNC6(skb, sizeof(struct wmi_cmd_hdr)) == NULL)
		return -ENOMEM;

	cmd |= FUNC1(cmd_id, WMI_CMD_HDR_CMD_ID);

	cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
	cmd_hdr->cmd_id = FUNC2(cmd);

	FUNC4(skb_cb, 0, sizeof(*skb_cb));
	FUNC7(ar, cmd_id, skb->data, skb->len);
	ret = FUNC3(&ar->htc, ar->wmi.eid, skb);

	if (ret)
		goto err_pull;

	return 0;

err_pull:
	FUNC5(skb, sizeof(struct wmi_cmd_hdr));
	return ret;
}