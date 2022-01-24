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
struct sk_buff {int dummy; } ;
struct p54_common {scalar_t__ beacon_req_id; int /*<<< orphan*/  beacon_comp; int /*<<< orphan*/  tx_stats_lock; TYPE_1__* tx_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 size_t FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 size_t P54_QUEUE_BEACON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct p54_common *priv,
				       struct sk_buff *skb)
{
	if (FUNC2(skb)) {
		unsigned long flags;

		FUNC5(&priv->tx_stats_lock, flags);
		priv->tx_stats[FUNC0(skb)].len--;
		FUNC6(&priv->tx_stats_lock, flags);

		if (FUNC7(FUNC0(skb) == P54_QUEUE_BEACON)) {
			if (priv->beacon_req_id == FUNC1(skb)) {
				/* this is the  active beacon set anymore */
				priv->beacon_req_id = 0;
			}
			FUNC3(&priv->beacon_comp);
		}
	}
	FUNC4(priv);
}