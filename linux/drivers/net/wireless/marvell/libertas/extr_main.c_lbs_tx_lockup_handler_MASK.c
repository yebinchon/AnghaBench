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
struct timer_list {int dummy; } ;
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  dnld_sent; int /*<<< orphan*/  (* reset_card ) (struct lbs_private*) ;int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNLD_RES_RECEIVED ; 
 struct lbs_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct lbs_private* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  tx_lockup_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct lbs_private *priv = FUNC0(priv, t, tx_lockup_timer);
	unsigned long flags;

	FUNC2(&priv->driver_lock, flags);

	FUNC1(priv->dev, "TX lockup detected\n");
	if (priv->reset_card)
		priv->reset_card(priv);

	priv->dnld_sent = DNLD_RES_RECEIVED;
	FUNC5(&priv->waitq);

	FUNC3(&priv->driver_lock, flags);
}