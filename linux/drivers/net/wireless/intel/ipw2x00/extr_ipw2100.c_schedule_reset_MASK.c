#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int time64_t ;
struct ipw2100_priv {int reset_backoff; int last_reset; int status; TYPE_1__* net_dev; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  reset_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int MAX_RESET_BACKOFF ; 
 int STATUS_RESET_PENDING ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipw2100_priv *priv)
{
	time64_t now = FUNC1();

	/* If we haven't received a reset request within the backoff period,
	 * then we can reset the backoff interval so this reset occurs
	 * immediately */
	if (priv->reset_backoff &&
	    (now - priv->last_reset > priv->reset_backoff))
		priv->reset_backoff = 0;

	priv->last_reset = now;

	if (!(priv->status & STATUS_RESET_PENDING)) {
		FUNC0("%s: Scheduling firmware restart (%llds).\n",
			       priv->net_dev->name, priv->reset_backoff);
		FUNC2(priv->net_dev);
		FUNC3(priv->net_dev);
		priv->status |= STATUS_RESET_PENDING;
		if (priv->reset_backoff)
			FUNC4(&priv->reset_work,
					      priv->reset_backoff * HZ);
		else
			FUNC4(&priv->reset_work, 0);

		if (priv->reset_backoff < MAX_RESET_BACKOFF)
			priv->reset_backoff++;

		FUNC5(&priv->wait_command_queue);
	} else
		FUNC0("%s: Firmware restart already in progress.\n",
			       priv->net_dev->name);

}