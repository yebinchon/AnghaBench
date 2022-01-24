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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 

__attribute__((used)) static inline void FUNC2(struct ath9k_htc_priv *priv,
				       struct sk_buff_head *queue)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(queue)) != NULL) {
		FUNC0(priv, skb, NULL);
	}
}