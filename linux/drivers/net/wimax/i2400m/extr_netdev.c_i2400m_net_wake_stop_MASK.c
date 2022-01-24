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
struct i2400m {int /*<<< orphan*/  tx_lock; struct sk_buff* wake_tx_skb; int /*<<< orphan*/  wake_tx_ws; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct i2400m *i2400m)
{
	struct device *dev = FUNC3(i2400m);
	struct sk_buff *wake_tx_skb;
	unsigned long flags;

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	/*
	 * See i2400m_hard_start_xmit(), references are taken there and
	 * here we release them if the packet was still pending.
	 */
	FUNC0(&i2400m->wake_tx_ws);

	FUNC6(&i2400m->tx_lock, flags);
	wake_tx_skb = i2400m->wake_tx_skb;
	i2400m->wake_tx_skb = NULL;
	FUNC7(&i2400m->tx_lock, flags);

	if (wake_tx_skb) {
		FUNC4(i2400m);
		FUNC5(wake_tx_skb);
	}

	FUNC1(3, dev, "(i2400m %p) = void\n", i2400m);
}