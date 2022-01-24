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
struct iwl_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw; int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct iwl_priv *priv)
{
	FUNC6(&priv->mutex);
	FUNC2(priv->hw);
	if (FUNC5(priv, 0)) {
		FUNC1(priv, "flush request fail\n");
		goto done;
	}
	FUNC0(priv, "wait transmit/flush all frames\n");
	FUNC4(priv->trans, 0xffffffff);
done:
	FUNC3(priv->hw);
	FUNC7(&priv->mutex);
}