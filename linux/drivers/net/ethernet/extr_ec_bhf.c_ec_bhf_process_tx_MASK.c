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
struct ec_bhf_priv {size_t tx_dnext; int /*<<< orphan*/  net_dev; int /*<<< orphan*/ * tx_descs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ec_bhf_priv *priv)
{
	if (FUNC4(FUNC1(priv->net_dev))) {
		/* Make sure that we perceive changes to tx_dnext. */
		FUNC3();

		if (FUNC0(&priv->tx_descs[priv->tx_dnext]))
			FUNC2(priv->net_dev);
	}
}