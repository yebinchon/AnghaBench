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
struct wmi_pdev_suspend_cmd {int /*<<< orphan*/  suspend_opt; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC3(struct ath10k *ar, u32 suspend_opt)
{
	struct wmi_pdev_suspend_cmd *cmd;
	struct sk_buff *skb;

	skb = FUNC2(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_pdev_suspend_cmd *)skb->data;
	cmd->suspend_opt = FUNC1(suspend_opt);

	return skb;
}