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
struct sk_buff {int dummy; } ;
struct ath6kl {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_TM_ATTR_CMD ; 
 int /*<<< orphan*/  ATH6KL_TM_ATTR_DATA ; 
 int /*<<< orphan*/  ATH6KL_TM_CMD_TCMD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,size_t,void*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ath6kl *ar, void *buf, size_t buf_len)
{
	struct sk_buff *skb;

	if (!buf || buf_len == 0)
		return;

	skb = FUNC1(ar->wiphy, buf_len, GFP_KERNEL);
	if (!skb) {
		FUNC0("failed to allocate testmode rx skb!\n");
		return;
	}
	if (FUNC5(skb, ATH6KL_TM_ATTR_CMD, ATH6KL_TM_CMD_TCMD) ||
	    FUNC4(skb, ATH6KL_TM_ATTR_DATA, buf_len, buf))
		goto nla_put_failure;
	FUNC2(skb, GFP_KERNEL);
	return;

nla_put_failure:
	FUNC3(skb);
	FUNC0("nla_put failed on testmode rx skb!\n");
}