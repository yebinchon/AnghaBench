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
struct lbs_private {int /*<<< orphan*/  auto_deepsleep_timer; int /*<<< orphan*/  tx_lockup_timer; int /*<<< orphan*/  command_timer; int /*<<< orphan*/  event_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 

__attribute__((used)) static void FUNC3(struct lbs_private *priv)
{
	FUNC2(priv);
	FUNC1(&priv->event_fifo);
	FUNC0(&priv->command_timer);
	FUNC0(&priv->tx_lockup_timer);
	FUNC0(&priv->auto_deepsleep_timer);
}