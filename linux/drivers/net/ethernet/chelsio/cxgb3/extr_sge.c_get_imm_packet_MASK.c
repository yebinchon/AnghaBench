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
struct rsp_desc {int /*<<< orphan*/  imm_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IMMED_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct sk_buff *FUNC3(const struct rsp_desc *resp)
{
	struct sk_buff *skb = FUNC1(IMMED_PKT_SIZE, GFP_ATOMIC);

	if (skb) {
		FUNC0(skb, IMMED_PKT_SIZE);
		FUNC2(skb, resp->imm_data, IMMED_PKT_SIZE);
	}
	return skb;
}