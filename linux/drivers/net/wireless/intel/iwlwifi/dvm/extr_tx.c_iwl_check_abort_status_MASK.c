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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct iwl_priv {int /*<<< orphan*/  tx_flush; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 scalar_t__ TX_STATUS_FAIL_RFKILL_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iwl_priv *priv,
			    u8 frame_count, u32 status)
{
	if (frame_count == 1 && status == TX_STATUS_FAIL_RFKILL_FLUSH) {
		FUNC0(priv, "Tx flush command to flush out all frames\n");
		if (!FUNC2(STATUS_EXIT_PENDING, &priv->status))
			FUNC1(priv->workqueue, &priv->tx_flush);
	}
}