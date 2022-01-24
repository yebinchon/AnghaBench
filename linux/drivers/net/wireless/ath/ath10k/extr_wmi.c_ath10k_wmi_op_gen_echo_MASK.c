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
struct wmi_echo_cmd {int /*<<< orphan*/  value; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar, u32 value)
{
	struct wmi_echo_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC2(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_echo_cmd *)skb->data;
	cmd->value = FUNC3(value);

	FUNC1(ar, ATH10K_DBG_WMI,
		   "wmi echo value 0x%08x\n", value);
	return skb;
}