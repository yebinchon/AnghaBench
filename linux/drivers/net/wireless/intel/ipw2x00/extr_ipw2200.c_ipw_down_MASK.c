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
struct ipw_priv {int status; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int STATUS_EXIT_PENDING ; 
 int STATUS_RF_KILL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 scalar_t__ FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	int exit_pending = priv->status & STATUS_EXIT_PENDING;

	priv->status |= STATUS_EXIT_PENDING;

	if (FUNC2(priv))
		FUNC0(priv);

	/* Wipe out the EXIT_PENDING status bit if we are not actually
	 * exiting the module */
	if (!exit_pending)
		priv->status &= ~STATUS_EXIT_PENDING;

	/* tell the device to stop sending interrupts */
	FUNC1(priv);

	/* Clear all bits but the RF Kill */
	priv->status &= STATUS_RF_KILL_MASK | STATUS_EXIT_PENDING;
	FUNC5(priv->net_dev);

	FUNC4(priv);

	FUNC3(priv);
}