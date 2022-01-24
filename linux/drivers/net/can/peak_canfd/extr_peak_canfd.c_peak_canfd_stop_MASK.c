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
struct peak_canfd_priv {int /*<<< orphan*/  index; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUCAN_TX_ABORT_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct peak_canfd_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct peak_canfd_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct peak_canfd_priv *priv)
{
	int err;

	/* go back to RESET mode */
	err = FUNC1(priv);
	if (err) {
		FUNC0(priv->ndev, "channel %u reset failed\n",
			   priv->index);
	} else {
		/* abort last Tx (MUST be done in RESET mode only!) */
		FUNC2(priv, PUCAN_TX_ABORT_FLUSH);
	}
}