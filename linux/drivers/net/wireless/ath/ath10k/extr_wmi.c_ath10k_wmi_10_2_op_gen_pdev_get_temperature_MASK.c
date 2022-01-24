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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC3(struct ath10k *ar)
{
	struct sk_buff *skb;

	skb = FUNC2(ar, 0);
	if (!skb)
		return FUNC0(-ENOMEM);

	FUNC1(ar, ATH10K_DBG_WMI, "wmi pdev get temperature\n");
	return skb;
}