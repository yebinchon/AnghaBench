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
struct p54s_priv {scalar_t__ fw_state; int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_pending; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FW_STATE_OFF ; 
 scalar_t__ FW_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct p54s_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *dev)
{
	struct p54s_priv *priv = dev->priv;
	unsigned long flags;

	FUNC3(&priv->mutex);
	FUNC1(priv->fw_state != FW_STATE_READY);

	FUNC5(priv);
	FUNC6(&priv->tx_lock, flags);
	FUNC0(&priv->tx_pending);
	FUNC7(&priv->tx_lock, flags);

	priv->fw_state = FW_STATE_OFF;
	FUNC4(&priv->mutex);

	FUNC2(&priv->work);
}